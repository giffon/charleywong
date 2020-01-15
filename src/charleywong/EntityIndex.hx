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
    static public var lunr(get, null):js.npm.lunr.Index;
    static function get_lunr() return lunr != null ? lunr : lunr = js.npm.lunr.Lunr.lunr(function() {
        var builder:js.npm.lunr.Builder = nativeThis;
        builder.ref("id");
        builder.field("id");
        builder.field("name[en]", { extractor: (e:Entity) -> e.name[en] });
        builder.field("name[zh]", { extractor: (e:Entity) -> e.name[zh] });
        builder.field("webpages", { extractor: (e:Entity) -> flatten(e.webpages.map(p -> breakupUrl(p.url))) });
        builder.field("posts", { extractor: (e:Entity) -> flatten(e.posts.map(p -> breakupUrl(p.url))) });
        for (e in entities) {
            builder.add(e);
        }
    });

    static var nonAlphaNumeric = ~/[^A-Za-z0-9]/g;
    static function breakupUrl(url:String):Array<String> {
        return nonAlphaNumeric.split(url);
    }
    static function flatten<T>(array:Array<Array<T>>):Array<T> {
        return array.fold((item, result:Array<T>) -> result.concat(item),[]);
    }
    #end
}