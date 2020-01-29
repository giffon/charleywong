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
                if (p.meta != null) o["meta"] = {
                    var o:DynamicAccess<Dynamic> = {};
                    for (k => v in p.meta)
                        o[k] = v;
                    o;
                }
                o["url"] = p.url;
                o;
            }],
            posts: [for (p in e.posts) {
                var o:DynamicAccess<Dynamic> = {};
                if (p.summary != null) o["summary"] = p.summary.toJson();
                o["url"] = p.url;
                o;
            }],
            tags: [for (t in e.tags) t.id]
        }
    }
}