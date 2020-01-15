package charleywong;

#if js
import js.Lib.*;
import js.npm.flexsearch.FlexSearch;
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
    static final mixedChiEngSep = ~/(?:[\s\-]+|(?=[\u4e00-\u9fff])|(?<=[\u4e00-\u9fff]))/g;
    static public var flexsearch(get, null):FlexSearch;
    static function get_flexsearch() return flexsearch != null ? flexsearch : flexsearch = {
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
                    "posts": {},
                },
            }
        });
        f.add(entities.map(e -> {
            id: e.id,
            name: e.name.toJson(),
            webpages: e.webpages.map(p -> p.url).join("\n"),
            posts: e.posts.map(p -> p.url).join("\n"),
        }));
        f;
    };
    #end
}