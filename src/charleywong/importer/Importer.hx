package charleywong.importer;

import haxe.*;
import sys.io.File;
import charleywong.*;
import charleywong.importer.FacebookImporter;
using StringTools;
using Lambda;

class Importer {
    static final fbAppId = Sys.getEnv("FB_APP_ID");
    static final entityIndex = EntityIndex.loadFromDirectory("data/entity");

    static function importFbPermalink(url:String) {
        var importer = new FacebookImporter();
        var fbPage = importer.fbPage(url);
        importer.destroy();
        importFbPage(fbPage, url);
    }

    static function importFbPage(fbPage:String, postUrl:Null<String>) {
        var entity = switch (entityIndex.entitiesOfFbPage[fbPage]) {
            case null:
                var importer = new FacebookImporter();
                var info = importer.fbPageInfo(fbPage);
                importer.destroy();
                createEntity(info.name, info, postUrl);
            case entity:
                updateEntity(entity, postUrl);
        }
        var fileContent = haxe.Json.stringify(entity.toJson(), null, "  ");
        if (Sys.getEnv("CI") != null || Sys.getEnv("GITHUB_ACTIONS") != null) {
            Sys.println("In CI, skip writing file.");
        } else {
            var file = "data/" + entity.id + ".json";
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
                for (fb => e in entityIndex.entitiesOfFbPage) {
                    importFbPage(fb, null);
                }
            case ["update", fb]:
                importFbPage(fb, null);
            case ["export"]:
                for (e in entityIndex.entities) {
                    var file = "data/" + e.id + ".json";
                    File.saveContent(file, haxe.Json.stringify(e.toJson(), null, "  "));
                }
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

    static function updateEntity(entity:Entity, post:Null<String>):Entity {
        if (post == null || entity.posts.exists(p -> p.url == post)) {
            return entity;
        } else {
            entity.posts.push({ url: post });
            return entity;
        }
    }

    static final noChi = ~/^[^\u4e00-\u9fff]+$/; // no chinese characters
    static final allChi = ~/^[\u4e00-\u9fff \-_\.·]+$/; // all chinese characters

    static function createEntity(name:String, fbPage:FacebookInfo, post:Null<String>):Entity {
        var className = getClassName(name, fbPage.page);
        var name:MultiLangString = {
            var chi_en = ~/^([\u4e00-\u9fff ]*[\u4e00-\u9fff])[^A-Za-z0-9\u4e00-\u9fff]*([^\u4e00-\u9fff]+)$/; // chinese then eng
            var en_chi = ~/^([^\u4e00-\u9fff]+?)[ \-]*([\u4e00-\u9fff]+)$/; // chinese then eng
            if (noChi.match(name))
                {
                    en: name
                }
            else if (allChi.match(name))
                {
                    zh: name
                }
            else if (chi_en.match(name))
                {
                    en: chi_en.matched(1),
                    zh: chi_en.matched(2)
                }
            else if (en_chi.match(name))
                {
                    en: en_chi.matched(1),
                    zh: en_chi.matched(2)
                }
            else
                {
                    zh: name
                }
        };
        var id = fbPage.page;
        var posts:Array<Post> = post == null ? [] : [{
            url: post,
        }];
        var meta:DynamicAccess<Dynamic> = {};
        if (fbPage.id != null) {
            meta["id"] = fbPage.id;
        }
        if (fbPage.about != null) {
            meta["about"] = fbPage.about;
        }
        meta["categories"] = fbPage.categories;
        if (fbPage.addr != null) {
            meta["addr"] = fbPage.addr.line;
            meta["area"] = fbPage.addr.area;
        }
        if (fbPage.email != null) {
            meta["email"] = fbPage.email;
        }
        if (fbPage.tel != null) {
            meta["tel"] = fbPage.tel;
        }
        var webpages:Array<WebPage> = [];
        if (fbPage.websites != null) {
            for (url in fbPage.websites)
                webpages.push({
                    url: url,
                });
        }
        webpages.push({
            url: 'https://www.facebook.com/${fbPage.page}/',
            meta: meta,
        });
        if (fbPage.ig != null) {
            webpages.push({
                url: 'https://www.instagram.com/${fbPage.ig}/',
            });
        }

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

        return {
            id: id,
            name: name,
            webpages: webpages,
            posts: posts,
            tags: [],
        };
    }
}