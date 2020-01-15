package charleywong;

#if js
import js.Lib.*;
#end
using Lambda;
using StringTools;

class EntityIndex {
    static public var entities(get, null):Map<String, Entity>;
    static function get_entities() return entities != null ? entities : entities = [
        for (cls in CompileTime.getAllClasses("charleywong.entities", true, Entity))
        Type.getClassName(cls) => Type.createInstance(cls, [])
    ];

    static public var entitiesOfUrl(get, null):Map<String, Entity>;
    static function get_entitiesOfUrl() return entitiesOfUrl != null ? entitiesOfUrl : entitiesOfUrl = [
        for (e in entities)
        for (page in e.webpages)
        page.url => e
    ];

    static final fbPageRegexp = ~/^https:\/\/www\.facebook\.com\/(.+?)\/$/;

    static public var entitiesOfFbPage(get, null):Map<String, Entity>;
    static function get_entitiesOfFbPage() return entitiesOfFbPage != null ? entitiesOfFbPage : entitiesOfFbPage = [
        for (url => e in entitiesOfUrl)
        if (fbPageRegexp.match(url))
        fbPageRegexp.matched(1) => e
    ];

    static public var entitiesOfId(get, null):Map<String, Entity>;
    static function get_entitiesOfId() return entitiesOfId != null ? entitiesOfId : entitiesOfId = [
        for (e in entities)
        e.id => e
    ];

    #if js
    static public var elasticlunr(get, null):js.npm.elasticlunr.Index;
    static function get_elasticlunr() return elasticlunr != null ? elasticlunr : elasticlunr = js.npm.elasticlunr.Elasticlunr.elasticlunr(function() {
        var t:js.npm.elasticlunr.Index = nativeThis;
        t.addField("id");
        t.addField("name_en");
        t.addField("name_zh");
        t.addField("webpages");
        t.addField("posts");
        for (e in entities) {
            t.addDoc({
                id: e.id,
                name_en: e.name[en],
                name_zh: e.name[zh],
                webpages: flatten(e.webpages.map(p -> breakupUrl(p.url))),
                posts: flatten(e.posts.map(p -> breakupUrl(p.url))),
            });
        }
    });

    static var nonAlphaNumeric = ~/[^A-Za-z0-9]/g;
    static function breakupUrl(url:String):Array<String> {
        return url.split("/").filter(p -> !["", "https:", "www", "facebook", "instagram"].has(p));
    }
    static function flatten<T>(array:Array<Array<T>>):Array<T> {
        return array.fold((item, result:Array<T>) -> result.concat(item),[]);
    }
    #end
}