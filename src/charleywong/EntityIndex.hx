package charleywong;

#if js
import js.Lib.*;
import js.npm.flexsearch.FlexSearch;
#end
import sys.*;
import sys.io.*;
import haxe.ds.*;
import haxe.io.*;
using Lambda;
using StringTools;

class EntityIndex {
    public final entities:Map<String, Entity>;
    public function new(entities:Map<String, Entity>):Void {
        this.entities = entities;
    }

    static public function loadFromDirectory(path:String):EntityIndex {
        var entities = new Map();
        for (item in FileSystem.readDirectory(path)) {
            if (!item.endsWith(".json")) continue;

            var file = Path.join([path, item]);
            entities[file] = try {
                Entity.fromJson(haxe.Json.parse(File.getContent(file)));
            } catch(e:Dynamic) {
                throw 'Error loading $file';
            }
        }
        return new EntityIndex(entities);
    }

    macro static public function embedFromDirectory(path:String):ExprOf<EntityIndex> {
        var exprs = [
            for (item in FileSystem.readDirectory(path))
            if (item.endsWith(".json"))
            {
                var file = Path.join([path, item]);
                var content = File.getContent(file);
                macro $v{file} => Entity.fromJson(haxe.Json.parse($v{content}));
            }
        ];
        return macro new EntityIndex([$a{exprs}]);
    }

    public var entitiesOfUrl(get, null):Map<String, Entity>;
    function get_entitiesOfUrl() return entitiesOfUrl != null ? entitiesOfUrl : entitiesOfUrl = [
        for (e in entities)
        for (page in e.webpages)
        page.url => e
    ];

    final fbPageRegexp = ~/^https:\/\/www\.facebook\.com\/(.+?)\/$/;

    public var entitiesOfFbPage(get, null):Map<String, Entity>;
    function get_entitiesOfFbPage() return entitiesOfFbPage != null ? entitiesOfFbPage : entitiesOfFbPage = {
        var m = new Map();
        for (e in entities)
        for (p in e.webpages)
        if (fbPageRegexp.match(p.url))
        {
            m[fbPageRegexp.matched(1)] = e;
            if (p.meta != null) switch (p.meta["id"]) {
                case null: //pass
                case id: m[id] = e;
            }
        }
        m;
    }

    public var entitiesOfId(get, null):Map<String, Entity>;
    function get_entitiesOfId() return entitiesOfId != null ? entitiesOfId : entitiesOfId = [
        for (e in entities)
        e.id => e
    ];

    #if js
    final mixedChiEngSep = ~/(?:[\s\-\/]+|(?=[\u4e00-\u9fff])|(?<=[\u4e00-\u9fff]))/g;
    public var flexsearch(get, null):FlexSearch;
    function get_flexsearch() return flexsearch != null ? flexsearch : flexsearch = {
        function tokenize(str:String) {
            return mixedChiEngSep.split(str);
        }
        var f = FlexSearch.create({
            doc: {
                id: "id",
                field: {
                    "id": {},
                    "name:en": {},
                    "name:zh": { tokenize: tokenize },
                    "webpages": {},
                    "tags": { tokenize: tokenize },
                },
            }
        });
        f.add(entities.map(e -> {
            id: e.id,
            name: e.name.toJson(),
            webpages: e.webpages.map(p -> p.url).join("\n"),
            tags: Tag.expend(e.tags).map(t -> [for (v in t.name) v].join("\n")).join("\n"),
        }));
        f;
    };
    #end
}