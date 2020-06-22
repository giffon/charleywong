package charleywong;

import js.npm.fetch.Fetch;
#if js
import js.lib.Promise;
import js.html.*;
import js.npm.jsdom.*;
import charleywong.UrlExtractors.*;
#end
using Lambda;
using StringTools;

class EntityTools {
    static public function areas(e:Entity):Array<String> {
        if (e.places == null)
            return [];

        return e.places.map(p -> p.area != null ? p.area.printAll() : null)
            .filter(a -> a != null)
            .fold((item, result:Array<String>) -> result.has(item) ? result : result.concat([item]), []);
    }

    static public function fullInfo(e:Entity):Entity {
        var full = Reflect.copy(e);
        full.tags = Tag.expend(full.tags);
        return full;
    }

    #if js
    static public function fullPostMeta(e:Entity):Promise<Entity> {
        return Promise.all(e.posts.map(p ->
            if (
                extractFbPost(new URL(p.url)) != null ||
                p.url.startsWith("https://www.instagram.com/p/") ||
                p.url.startsWith("https://www.youtube.com/watch?v=") ||
                p.url.startsWith("https://t.me/") ||
                p.url.startsWith("https://twitter.com/")
            ) {
                Promise.resolve(p);
            } else {
                Fetch.fetch(p.url)
                    .then(r -> r.text())
                    .then(text -> {
                        var doc = new JSDOM(text, {
                            virtualConsole: new VirtualConsole(),
                        }).window.document;
                        var og:Array<{property:String, content:String}> = [];
                        for (meta in doc.querySelectorAll("meta[property^='og:'],meta[property^='article:']")) {
                            var meta:MetaElement = cast meta;
                            og.push({
                                property: meta.getAttribute("property"),
                                content: meta.content,
                            });
                        }
                        var p = Reflect.copy(p);
                        if (p.meta == null)
                            p.meta = {};
                        p.meta["og"] = og;
                        p;
                    })
                    .catchError(e -> {
                        trace(e);
                        p;
                    });
            }
        )).then(posts -> {
            var full = Reflect.copy(e);
            full.posts = cast posts;
            full;
        });
    }
    #end
}