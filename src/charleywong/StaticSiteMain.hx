package charleywong;

import CrossFetch.fetch;
import js.lib.Promise;
import haxe.Json;
import haxe.io.Path;
import sys.FileSystem;
import sys.io.File;
import react.*;
import charleywong.views.*;
import charleywong.Search;
using charleywong.EntityTools;
using StringTools;
using Lambda;

/**
    Generates the static site (`dist/site`) and the data used by the Cloudflare Worker (`dist/worker`).

    node staticSite.js build [--profile-pic-origin https://img.charleywong.info]
    node staticSite.js dict [path/to/jieba.dict.utf8]
**/
class StaticSiteMain {
    static final siteDir = "dist/site";
    static final workerDataDir = "dist/worker";
    static final dictFile = "data/search/jieba-dict.txt";
    // Pinned to the version bundled with nodejieba, which was used by the old server.
    static final jiebaDictUrl = "https://raw.githubusercontent.com/yanyiwu/cppjieba/418b18db555c67f0ba47dc5c7ffa566571dc8f38/dict/jieba.dict.utf8";

    // Placeholders in the page templates that the Worker fills in.
    static final markQuery = "%%CW_QUERY%%";
    static final markSlug = "%%CW_SLUG%%";
    static final markListName = "%%CW_LIST_NAME%%";
    static final markPath = "%%CW_PATH%%";
    static final markCount = "%%CW_COUNT%%";
    static final markList = "%%CW_LIST%%";
    static final markPrefetch = "%%CW_PREFETCH%%";

    static function renderView(view, props:Dynamic):String {
        return "<!DOCTYPE html>" + ReactDOMServer.renderToStaticMarkup(React.createElement(view, props));
    }

    static function save(file:String, content:String):Void {
        final dir = Path.directory(file);
        if (dir != "" && !FileSystem.exists(dir))
            FileSystem.createDirectory(dir);
        File.saveContent(file, content);
    }

    static function copy(src:String, dest:String):Void {
        final dir = Path.directory(dest);
        if (dir != "" && !FileSystem.exists(dir))
            FileSystem.createDirectory(dir);
        File.copy(src, dest);
    }

    static function savePage(urlPath:String, html:String):Void {
        save(Path.join([siteDir, urlPath + ".html"]), html);
    }

    static function replaceOnce(s:String, sub:String, by:String):String {
        final parts = s.split(sub);
        if (parts.length != 2)
            throw 'Expected exactly one "$sub" in the template, found ${parts.length - 1}.';
        return parts.join(by);
    }

    static function sortedEntities(entityIndex:EntityIndex):Array<Entity> {
        final entities = entityIndex.entities.array();
        entities.sort((a, b) -> Reflect.compare(a.id, b.id));
        return entities;
    }

    static function renderName(n:MultiLangString) {
        return switch [n[zh], n[en]] {
            case [ null, null ]: throw 'No name available';
            case [ z, null ]: z;
            case [ null, e ]: e;
            case [ z, e ]: '${e} ${z}';
        }
    }

    /**
        Copy the static resources, fingerprinted.
        Files in the root of the static directory are also copied without fingerprint.
        Returns the paths of the fingerprinted files, keyed by the original paths.
    **/
    static function copyStaticResources():Map<String,String> {
        final fingerprinted = new Map<String,String>();
        function walk(dir:String) {
            for (item in FileSystem.readDirectory(Path.join([StaticResource.resourcesDir, dir]))) {
                final path = Path.join([dir, item]);
                final src = Path.join([StaticResource.resourcesDir, path]);
                if (FileSystem.isDirectory(src)) {
                    walk(path);
                    continue;
                }
                final fp = StaticResource.fingerprint(path, StaticResource.hash(path));
                fingerprinted[path] = fp;
                copy(src, Path.join([siteDir, fp.urlDecode()]));
                if (dir == "/")
                    copy(src, Path.join([siteDir, path]));
            }
        }
        walk("/");
        return fingerprinted;
    }

    static function isInRoot(path:String):Bool {
        return switch (Path.directory(path)) {
            case "" | "/": true;
            case _: false;
        }
    }

    static function headers(fingerprinted:Map<String,String>):String {
        final immutable = [
            "  ! Cache-Control",
            "  Cache-Control: public, max-age=31536000, immutable", // 1 year
        ];
        // files in sub-directories are only copied with fingerprint
        final immutablePaths = [
            for (dir in FileSystem.readDirectory(StaticResource.resourcesDir))
            if (FileSystem.isDirectory(Path.join([StaticResource.resourcesDir, dir])))
            '/${dir}/*'
        ].concat([
            for (path => fp in fingerprinted)
            if (isInRoot(path))
            fp
        ]);
        immutablePaths.sort(Reflect.compare);
        final lines = [
            "/*",
            "  Access-Control-Allow-Origin: *",
            "  Cache-Control: public, max-age=7200, stale-while-revalidate=604800", // max-age: 2 hours, stale-while-revalidate: 7 days
        ];
        for (path in immutablePaths) {
            lines.push(path);
            for (l in immutable)
                lines.push(l);
        }
        return lines.join("\n") + "\n";
    }

    static function sitemap(entityIndex:EntityIndex):Promise<String> {
        final links = [
            { url: '/' },
            { url: '/list/all' },
            { url: Mooncake2020.path },
            { url: HkbaseDirectoryView.path },
        ];
        for (e in sortedEntities(entityIndex))
            if (e.searchable())
                links.push({
                    url: Path.join([Site.domain, e.id])
                });
        final stream = new sitemap.SitemapStream( { hostname: Site.domain } );
        return Sitemap.streamToPromise(node.stream.Readable.from(links).pipe(stream))
            .then(data -> data.toString());
    }

    static function searchText(e:Entity) {
        return {
            name: e.name.printAll(),
            tags: [
                for (t in Tag.expend(e.tags))
                for (v in t.name)
                v
            ].join("\n"),
            meta:
                e.webpages.map(p -> switch (p.meta) {
                    case null: "";
                    case m:
                        (switch (m["name"]) {
                            case null: "";
                            case name: name;
                        }) + "\n" +
                        (switch (m["about"]) {
                            case null: "";
                            case about: about;
                        });
                }).join("\n")
                +
                switch (HkbaseDirectory.getData(e)) {
                    case null: "";
                    case d:
                        d.name_en + "\n" +
                        d.name_zh + "\n" +
                        d.type + "\n" +
                        d.description;
                },
        }
    }

    static function loadDict():SearchDict {
        if (!FileSystem.exists(dictFile))
            throw '${dictFile} not found. Run `just search-dict` first.';
        final words:haxe.DynamicAccess<Float> = {};
        var logTotal = 0.0;
        var maxLength = 1;
        for (line in File.getContent(dictFile).split("\n")) {
            if (line.startsWith("# total ")) {
                logTotal = Math.log(Std.parseFloat(line.substr("# total ".length)));
                continue;
            }
            if (line == "" || line.startsWith("#"))
                continue;
            final parts = line.split(" ");
            words[parts[0]] = Std.parseFloat(parts[1]);
            maxLength = Std.int(Math.max(maxLength, parts[0].length));
        }
        return {
            logTotal: logTotal,
            words: words,
            maxLength: maxLength,
        };
    }

    static function postImages(entities:Array<Entity>):haxe.DynamicAccess<String> {
        final images:haxe.DynamicAccess<String> = {};
        for (e in entities)
        for (p in e.posts) {
            if (p.meta == null || p.meta["og"] == null)
                continue;
            if (new js.html.URL(p.url).hostname == "web.archive.org")
                continue;
            switch ((p.meta["og"]:Array<{property:String, content:String}>).find(o -> o.property == "og:image")) {
                case null:
                    // pass
                case { content: imageUrl }:
                    images[p.url] = imageUrl;
            }
        }
        return images;
    }

    static function workerData(entityIndex:EntityIndex, fingerprinted:Map<String,String>):Void {
        final entities = sortedEntities(entityIndex);
        final indexOfId = [for (i => e in entities) e.id => i];
        final aliases:haxe.DynamicAccess<Int> = {};
        for (i => e in entities)
            if (e.alias != null)
                for (a in e.alias)
                    aliases[a] = i;

        final dict = loadDict();
        final searchDocs = [
            for (i => e in entities)
            if (e.searchable())
            {
                final t = searchText(e);
                Search.doc(i, t.name, t.tags, t.meta);
            }
        ];

        final searchTemplate = renderView(EntityListView, {
            slug: markSlug,
            path: Path.join(["search", markSlug]),
            listName: '${markQuery} 搜尋結果',
            searchQuery: markQuery,
            entities: [],
        });
        final listTemplate = renderView(EntityListView, {
            slug: markSlug,
            path: markPath,
            listName: markListName,
            entities: [],
        });
        function fillable(template:String) {
            template = replaceOnce(template, "共有 0 項資料", '共有 ${markCount} 項資料');
            template = replaceOnce(template, '<ul class="entity-list"></ul>', '<ul class="entity-list">${markList}</ul>');
            template = replaceOnce(template, "</head>", '${markPrefetch}</head>');
            return template;
        }

        save(Path.join([workerDataDir, "entities.bin"]), [
            for (e in entities)
            Json.stringify(e.fullInfo())
        ].join("\n"));
        save(Path.join([workerDataDir, "index.txt"]), Json.stringify({
            profilePicOrigin: Site.profilePicOrigin,
            mooncake2020Path: Mooncake2020.path,
            hkbaseDirectoryPath: HkbaseDirectoryView.path,
            entities: [
                for (e in entities)
                ([
                    e.id,
                    e.tags.has("removed"),
                    ReactDOMServer.renderToStaticMarkup(EntityListView.renderEntity(e)),
                ]:Array<Dynamic>)
            ],
            aliases: aliases,
            search: {
                docs: searchDocs,
                dict: dict,
            },
            templates: {
                search: fillable(searchTemplate),
                list: fillable(listTemplate),
            },
            staticFiles: {
                final files:haxe.DynamicAccess<String> = {};
                for (path => fp in fingerprinted)
                    files[path] = fp;
                files;
            },
            postImages: postImages(entities),
        }));
    }

    static function build(args:Array<String>):Promise<Any> {
        switch (args) {
            case ["--profile-pic-origin", origin]:
                Site.profilePicOrigin = origin;
            case []:
                // pass
            case _:
                throw 'Unknown arguments: $args';
        }

        final entityIndex = EntityIndex.loadFromDirectory(ServerMain.dataDirectory);
        Site.countEntities = () -> entityIndex.entities.filter(e -> e.posts.length > 0).count();

        for (dir in [siteDir, workerDataDir])
            if (FileSystem.exists(dir))
                Sys.command("rm", ["-rf", dir]);
        FileSystem.createDirectory(siteDir);
        FileSystem.createDirectory(workerDataDir);

        final fingerprinted = copyStaticResources();
        copy("static/images/fav/favicon.ico", Path.join([siteDir, "favicon.ico"]));
        save(Path.join([siteDir, "robots.txt"]), "Sitemap: " + Path.join([Site.domain, "sitemap.xml"]));
        save(Path.join([siteDir, "_headers"]), headers(fingerprinted));

        savePage("index", renderView(Index, {}));
        savePage("privacy", renderView(PrivacyView, {}));
        savePage(Mooncake2020.path, renderView(Mooncake2020, {}));
        savePage(HkbaseDirectoryView.path, renderView(HkbaseDirectoryView, {
            entities: HkbaseDirectory.localCache // use the order of HKBASE directory
                .map(d -> HkbaseDirectory.getEntity(d, entityIndex.entitiesOfHkbase))
                .filter(e -> e != null),
        }));

        final listed = [
            for (e in entityIndex.entities)
            if (e.searchable())
            e
        ];
        listed.sort((e1, e2) -> Reflect.compare(renderName(e1.name).toLowerCase(), renderName(e2.name).toLowerCase()));
        savePage("list/all", renderView(EntityListView, {
            slug: "all",
            path: "list/all",
            listName: "全部 Charley Wong 和你查 商業/品牌",
            entities: listed,
        }));
        save(Path.join([siteDir, "list/all.json"]), Json.stringify([
            for (e in entityIndex.entities)
            if (e.searchable())
            e.id
        ]));

        final entities = sortedEntities(entityIndex).filter(e -> !e.tags.has("removed"));
        for (i => e in entities) {
            savePage(e.id, renderView(EntityView, { entity: e }));
            save(Path.join([siteDir, e.id + ".json"]), Json.stringify(e.fullInfo()));
            if ((i + 1) % 1000 == 0)
                Sys.println('Rendered ${i + 1}/${entities.length} entities');
        }

        workerData(entityIndex, fingerprinted);

        return sitemap(entityIndex)
            .then(xml -> save(Path.join([siteDir, "sitemap.xml"]), xml))
            .then(_ -> {
                function countFiles(dir:String):Int {
                    return FileSystem.readDirectory(dir)
                        .map(item -> Path.join([dir, item]))
                        .fold((path, n) -> n + (FileSystem.isDirectory(path) ? countFiles(path) : 1), 0);
                }
                final count = countFiles(siteDir);
                Sys.println('Generated ${count} files in ${siteDir}');
                if (count > 20000)
                    throw 'Cloudflare Workers static assets are limited to 20,000 files.';
            });
    }

    /**
        Extract the words of jieba's dictionary that occur in the entity data,
        such that the search query segmentation can be done without jieba.
        `jiebaDict` is the content of jieba.dict.utf8.
    **/
    static function dict(jiebaDict:String):Void {
        final entityIndex = EntityIndex.loadFromDirectory(ServerMain.dataDirectory);
        final corpus = Search.normalize([
            for (e in entityIndex.entities)
            if (e.searchable())
            {
                final t = searchText(e);
                t.name + "\n" + t.tags + "\n" + t.meta;
            }
        ].join("\n"));
        final substrings = new Map<String,Bool>();
        ~/[㐀-鿿豈-﫿぀-ヿ가-힯]+/g.map(corpus, re -> {
            final run = re.matched(0);
            for (i in 0...run.length)
            for (l in 2...5)
            if (i + l <= run.length)
                substrings[run.substr(i, l)] = true;
            "";
        });
        var total = 0.0;
        final words = [];
        for (line in jiebaDict.split("\n")) {
            final parts = line.split(" ");
            if (parts.length < 2)
                continue;
            final freq = Std.parseFloat(parts[1]);
            total += freq;
            final w = Search.normalize(parts[0]);
            if (w.length < 2 || !~/^[㐀-鿿豈-﫿぀-ヿ가-힯]+$/.match(w))
                continue;
            if (w.length <= 4 ? substrings.exists(w) : corpus.indexOf(w) >= 0)
                words.push('${w} ${parts[1]}');
        }
        save(dictFile, [
            "# Words of jieba's dictionary (https://github.com/yanyiwu/cppjieba) that occur in the entity data.",
            "# Generated by `just search-dict`. Regenerate it when the entity data changes significantly.",
            '# total ${total}',
        ].concat(words).join("\n") + "\n");
        Sys.println('Saved ${words.length} words to ${dictFile}');
    }

    static function main():Void {
        switch (Sys.args()) {
            case ["dict"]:
                fetch(jiebaDictUrl)
                    .then(r -> if (!r.ok) {
                        throw 'Failed to download ${jiebaDictUrl}: ${r.status}';
                    } else {
                        r.text();
                    })
                    .then(dict)
                    .catchError(err -> {
                        trace(err);
                        Sys.exit(1);
                    });
            case ["dict", jiebaDictFile]:
                dict(File.getContent(jiebaDictFile));
            case args if (args[0] == "build"):
                build(args.slice(1)).catchError(err -> {
                    trace(err);
                    Sys.exit(1);
                });
            case args:
                throw 'Unknown arguments: $args';
        }
    }
}
