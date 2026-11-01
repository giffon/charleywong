package charleywong;

import sys.*;
import sys.io.*;
import haxe.ds.*;
import haxe.io.*;
import haxe.Json;
using Lambda;
using StringTools;
using charleywong.EntityTools;

class EntityIndex {
    public final entities:Map<String, Entity>;
    public function new(entities:Map<String, Entity>):Void {
        this.entities = entities;
    }

    public function invalidate():Void {
        entitiesOfUrl = null;
        entitiesOfFbPage = null;
        entitiesOfId = null;

        #if (js && (!browser))
        searchIndex = null;
        #end
    }

    static public function loadFromDirectory(path:String):EntityIndex {
        var entities = new Map();
        for (item in FileSystem.readDirectory(path)) {
            if (!item.endsWith(".json")) continue;

            var file = Path.join([path, item]);
            entities[file] = try {
                haxe.Json.parse(File.getContent(file));
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
            if (p.meta != null) {
                switch (p.meta["id"]) {
                    case null: //pass
                    case id: m[id] = e;
                }
                switch (p.meta["username"]) {
                    case null: //pass
                    case username: m[username] = e;
                }
            }
        }
        m;
    }

    public var entitiesOfId(get, null):Map<String, Entity>;
    function get_entitiesOfId() return entitiesOfId != null ? entitiesOfId : entitiesOfId = {
        var m = [
            for (e in entities)
            e.id => e
        ];

        //alias
        for (e in entities)
        if (e.alias != null)
        for (id in e.alias)
        {
            m[id] = e;
        }

        m;
    }

    public var entitiesOfHkbase(get, null):Array<Entity>;
    function get_entitiesOfHkbase()
        return entitiesOfHkbase != null ? entitiesOfHkbase : entitiesOfHkbase = entities.filter(e -> e.tags.exists(t -> t.id == "hkbaseDirectory"));

    #if (js && (!browser))
    public var searchIndex(get, null):SearchIndex;
    function get_searchIndex() return searchIndex != null ? searchIndex : searchIndex = new SearchIndex(
        [for (e in entities) e],
        SearchIndex.loadDict()
    );
    #end
}
