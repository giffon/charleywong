package charleywong.importer;

import haxe.*;
import sys.io.File;
import haxe.ds.ReadOnlyArray;
import haxe.macro.Expr;
import charleywong.*;
import charleywong.importer.FacebookImporter;
using StringTools;
using Lambda;

class Importer {
    static final fbAppId = Sys.getEnv("FB_APP_ID");

    static function importFbPermalink(url:String) {
        var importer = new FacebookImporter();
        var fbPage = importer.fbPage(url);
        importer.destroy();
        importFbPage(fbPage, url);
    }

    static function importFbPage(fbPage:String, postUrl:Null<String>) {
        var cls = switch (EntityIndex.entitiesOfFbPage[fbPage]) {
            case null:
                var importer = new FacebookImporter();
                var info = importer.fbPageInfo(fbPage);
                importer.destroy();
                createEntity(info.name, info, postUrl);
            case entity:
                updateEntity(entity, postUrl);
        }
        var fileContent = new haxe.macro.Printer("    ").printTypeDefinition(cls);
        var formatterProcess = new sys.io.Process("haxelib", ["run", "formatter", "--stdin", "-s", "src"]);
        formatterProcess.stdin.writeString(fileContent);
        formatterProcess.stdin.close();
        fileContent = formatterProcess.stdout.readAll().toString();
        formatterProcess.close();
        if (Sys.getEnv("CI") != null || Sys.getEnv("GITHUB_ACTIONS") != null) {
            Sys.println("In CI, skip writing file.");
        } else {
            var file = "src/charleywong/entities/" + cls.name + ".hx";
            var rewrite = sys.FileSystem.exists(file);
            File.saveContent(file, fileContent);
            Sys.println((rewrite ? "✍️  Rewritten " : "🌟  Created ") + file);
            Sys.command("code", [file]);
        }
    }

    static function importUrl(url:String):Void {
        if (!url.startsWith("https://www.facebook.com/")) {
            throw '$url doesn\'t look like a Facebook URL.';
        }

        // https://www.facebook.com/permalink.php?story_fbid=1384711015018289&id=897763637046365&__xts__%5B0%5D=68.ARDoat1gIoDWNhWOYOl4y2ph9GCqrYoWLE4bfOiLDxX9nOIYWW4IpujBgs52jBUlU_uzyAXHdsYldWW0tJvlRn-2_LXjLeAhbBIPxQLD1OXEoFFu1cmGbGm2XcVKvSI5yxeyLT-36li2qYQEPITHxhEMvwQAXYtySy_ErDCAPRi32K6H8iRp7pfc_pxc2S9AOb9IhlWwizb3o7_IunO6z-q22DorIPRXBBt2-R3Cpg4cz_yfM3-4uaGu2lPozkQXzcEwkCr84sUkl8gEVFaOYS8P51Xqo0jsH4gOHxwJP5c7hkyqxNvUmQhCjzFoticWkZ_p5laKOD5p0kh1bH3JgyMS7A&__tn__=-R
        var permalinkRegexp = ~/^https:\/\/www\.facebook\.com\/permalink\.php.+$/;
        if (permalinkRegexp.match(url)) {
            var url = switch (url.indexOf("&__xts__")) {
                case -1:
                    url;
                case qIndex:
                    url.substring(0, qIndex);
            };
            importFbPermalink(url);
            return;
        }

        var postRegexp = ~/^https:\/\/www\.facebook\.com\/(.+?)\/(?:posts|photos|videos)\/.+$/;
        if (postRegexp.match(url)) {
            var fbPage = postRegexp.matched(1);
            var url = switch (url.indexOf("?")) {
                case -1:
                    url;
                case qIndex:
                    url.substring(0, qIndex);
            };
            importFbPage(fbPage, url);
            return;
        }

        throw 'Cannot handle $url';
    }

    static function processSearchResults(jsonFile:String):Void {
        var json:Array<{
            title:String,
            link:String,
            snippet:String,
        }> = Json.parse(File.getContent(jsonFile));
        // trace(json);

    }

    static function main() {
        var args = Sys.args();

        switch (args) {
            case [a] if (a.startsWith("https://")):
                importUrl(a.trim());
            case ["update"]:
                for (fb => e in EntityIndex.entitiesOfFbPage) {
                    importFbPage(fb, null);
                }
            case ["update", fb]:
                importFbPage(fb, null);
            case _:
                throw 'Unknow args $args';
        }
    }

    static function uppercaseFirstChar(str:String):String {
        return str.charAt(0).toUpperCase() + str.substr(1);
    }

    static function removeNonEngChar(str:String):String {
        return ~/[^A-Za-z0-9]/g.replace(str, "");
    }

    static function toTitleCase(str) {
        return uppercaseFirstChar(removeNonEngChar(str));
    }

    static function getClassName(name:String, fbPage:String):String {
        if (~/^[^\u4e00-\u9fff]+$/.match(name)) {
            return toTitleCase(name);
        }

        if (~/^[0-9]+$/.match(fbPage)) {
            return 'Fb${fbPage}';
        }

        if (~/^[^\u4e00-\u9fff]+$/.match(fbPage)) {
            return toTitleCase(fbPage);
        }

        return toTitleCase(name);

        throw 'Cannot get a class name from $name ($fbPage).';
    }

    static function valueToExpr(v:Dynamic):Expr {
        return switch (Type.typeof(v)) {
            case TNull: macro null;
            case TInt: {
                expr: EConst(CInt(Std.string(v))),
                pos: null
            }
            case TFloat: {
                expr: EConst(CFloat(Std.string(v))),
                pos: null
            }
            case TBool: {
                expr: EConst(CIdent(v ? "true" : "false")),
                pos: null
            }
            case TClass(String): {
                expr: EConst(CString(v)),
                pos: null
            }
            case TClass(Array):
                var a:Array<Dynamic> = v;
                var items = a.map(valueToExpr);
                macro [$a{items}];
            case TObject:
                var fields = [
                    for (f in Reflect.fields(v))
                    {
                        field: f,
                        expr: valueToExpr(Reflect.field(v, f)),
                    }
                ];
                {
                    expr: EObjectDecl(fields),
                    pos: null,
                }
            case type:
                throw 'Cannot handle $type.';
        }
    }

    static function updateEntity(entity:Entity, post:Null<String>) {
        var fullName = Type.getClassName(Type.getClass(entity)).split(".");
        var className = fullName[fullName.length - 1];
        var idExpr = {
            expr: EConst(CString(entity.id)),
            pos: null,
        };
        var nameExprs = [
            for (lang => name in entity.name)
            {
                var nameExpr = {
                    expr: EConst(CString(name)),
                    pos: null,
                };
                macro $i{lang} => ${nameExpr};
            }
        ];
        var webpagesExprs = [];
        for (p in entity.webpages)
        {
            final fields = [];
            var urlExpr = {
                expr: EConst(CString(p.url)),
                pos: null,
            };
            webpagesExprs.push({
                expr: EObjectDecl(fields),
                pos: null,
            });
            switch (macro { url: $urlExpr }) {
                case { expr: EObjectDecl(fs) }: fs.iter(f -> fields.push(f));
                case e: throw '$e is not EObjectDecl.';
            }
            var fbRegexp = ~/^https:\/\/www\.facebook\.com\/(.+)\/$/;
            if (p.meta != null) {
                var metas = [for (k => v in p.meta) macro ${{expr:EConst(CString(k)), pos:null}} => ${valueToExpr(v)}];
                if (fbRegexp.match(p.url) && p.meta["id"] == null) {
                    var importer = new FacebookImporter();
                    var fbPage = importer.fbPageInfo(fbRegexp.matched(1));
                    importer.destroy();

                    metas.push(macro "id" => ${valueToExpr(fbPage.id)});

                    if (p.url.endsWith('-${fbPage.id}/')) {
                        fields[0].expr = valueToExpr('https://www.facebook.com/${fbPage.id}/');
                    }
                }
                var metaExpr = macro [$a{metas}];
                switch (macro { meta: $metaExpr }) {
                    case { expr: EObjectDecl(fs) }: fs.iter(f -> fields.push(f));
                    case e: throw '$e is not EObjectDecl.';
                }
            }
        }
        var posts = post == null || entity.posts.exists(p -> p.url == post) ? entity.posts : entity.posts.concat([{ url: post }]);
        var postsExprs = [
            for (p in posts)
            {
                var urlExpr = {
                    expr: EConst(CString(p.url)),
                    pos: null,
                };
                macro { url: $urlExpr };
            }
        ];
        var tagsExprs = [
            for (t in entity.tags)
            {
                var tName = [for (k => v in tags) if (v == t) k][0];
                macro $i{tName};
            }
        ];
        var cls = macro class $className implements Entity {
            public final id = ${idExpr};
            public final name = $a{nameExprs};
            public final webpages:Array<WebPage> = $a{webpagesExprs};
            public final posts:Array<Post> = $a{postsExprs};
            public final tags:Array<Tag> = $a{tagsExprs};
        };
        cls.pack = fullName.slice(0, fullName.length - 1);
        return cls;
    }


    static final noChi = ~/^[^\u4e00-\u9fff]+$/; // no chinese characters
    static final allChi = ~/^[\u4e00-\u9fff \-_\.·]+$/; // all chinese characters

    static function createEntity(name:String, fbPage:FacebookInfo, post:Null<String>) {
        var className = getClassName(name, fbPage.page);
        var nameExpr = {
            var chi_en = ~/^([\u4e00-\u9fff ]*[\u4e00-\u9fff])[^A-Za-z0-9\u4e00-\u9fff]*(.+)$/; // chinese then eng
            var en_chi = ~/^([^\u4e00-\u9fff]+?)[ \-]*([\u4e00-\u9fff]+)$/; // chinese then eng
            if (noChi.match(name))
                macro [
                    en => ${{
                        expr: EConst(CString(name)),
                        pos: null,
                    }}
                ]
            else if (allChi.match(name))
                macro [
                    zh => ${{
                        expr: EConst(CString(name)),
                        pos: null,
                    }}
                ]
            else if (chi_en.match(name))
                macro [
                    zh => ${{
                        expr: EConst(CString(chi_en.matched(1))),
                        pos: null,
                    }},
                    en => ${{
                        expr: EConst(CString(chi_en.matched(2))),
                        pos: null,
                    }},
                ]
            else if (en_chi.match(name))
                macro [
                    en => ${{
                        expr: EConst(CString(en_chi.matched(1))),
                        pos: null,
                    }},
                    zh => ${{
                        expr: EConst(CString(en_chi.matched(2))),
                        pos: null,
                    }},
                ]
            else
                macro [
                    zh => ${{
                        expr: EConst(CString(name)),
                        pos: null,
                    }}
                ];
        };
        var idExpr = {
            expr: EConst(CString(fbPage.page)),
            pos: null,
        };
        var postsExpr = post == null ? macro [] : valueToExpr([{
            url: post,
        }]);
        var metaExprs = [];
        if (fbPage.id != null) {
            metaExprs.push(macro "id" => ${valueToExpr(fbPage.id)});
        }
        if (fbPage.about != null) {
            metaExprs.push(macro "about" => ${valueToExpr(fbPage.about)});
        }
        metaExprs.push(macro "categories" => ${valueToExpr(fbPage.categories)});
        if (fbPage.addr != null) {
            metaExprs.push(macro "addr" => ${valueToExpr(fbPage.addr.line)});
            metaExprs.push(macro "area" => ${valueToExpr(fbPage.addr.area)});
        }
        if (fbPage.email != null) {
            metaExprs.push(macro "email" => ${valueToExpr(fbPage.email)});
        }
        if (fbPage.tel != null) {
            metaExprs.push(macro "tel" => ${valueToExpr(fbPage.tel)});
        }
        var webpagesExprs = [];
        if (fbPage.websites != null) {
            for (url in fbPage.websites)
                webpagesExprs.push(macro {
                    url: ${valueToExpr(url)},
                });
        }
        webpagesExprs.push(macro {
            url: ${valueToExpr('https://www.facebook.com/${fbPage.page}/')},
            meta: [$a{metaExprs}],
        });
        if (fbPage.ig != null) {
            webpagesExprs.push(macro {
                url: ${valueToExpr('https://www.instagram.com/${fbPage.ig}/')},
            });
        }
        var cls = macro class $className implements Entity {
            public final id =${idExpr};
            public final name = ${nameExpr};
            public final webpages:Array<WebPage> = [$a{webpagesExprs}];
            public final posts:Array<Post> = $postsExpr;
            public final tags:Array<Tag> = [];
        };
        cls.pack = ["charleywong", "entities"];

        var urls = [];
        if (fbPage.websites != null) fbPage.websites.iter(url -> urls.push(url));
        if (fbPage.ig != null) urls.push('https://www.instagram.com/${fbPage.ig}/');
        for (url in urls) {
            switch (Utils.isUrlAccessible(url)) {
                case Success(_):
                    //pass
                case Failure(err):
                    Sys.println('⚠️  $url is not accessible. $err');
            }
        }

        return cls;
    }
}