package charleywong;

using Lambda;
using StringTools;

class EntityIndex {
    static public final entities:Map<String, Entity> = [
        for (cls in CompileTime.getAllClasses("charleywong.entities", true, Entity))
        Type.getClassName(cls) => Type.createInstance(cls, [])
    ];

    static public final entitiesOfUrl:Map<String, Entity> = [
        for (e in entities)
        for (page in e.webpages)
        page.url => e
    ];

    static final fbPageRegexp = ~/^https:\/\/www\.facebook\.com\/(.+?)\/$/;

    static public final entitiesOfFbPage:Map<String, Entity> = [
        for (url => e in entitiesOfUrl)
        if (fbPageRegexp.match(url))
        fbPageRegexp.matched(1) => e
    ];
}