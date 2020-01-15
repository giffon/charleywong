package charleywong;

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
}