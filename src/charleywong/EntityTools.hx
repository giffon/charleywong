package charleywong;

import haxe.DynamicAccess;

class EntityTools {
    static public function toJson(e:Entity) {
        return {
            id: e.id,
            name: e.name.toJson(),
            webpages: [for (p in e.webpages) {
                var o:DynamicAccess<Dynamic> = {};
                if (p.name != null) o["name"] = p.name.toJson();
                o["url"] = p.url;
                o;
            }],
            posts: [for (p in e.posts) {
                var o:DynamicAccess<Dynamic> = {};
                if (p.summary != null) o["summary"] = p.summary.toJson();
                o["url"] = p.url;
                o;
            }],
        }
    }
}