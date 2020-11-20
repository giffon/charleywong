package charleywong;

import haxe.*;
import tink.core.*;
using StringTools;

#if nodejs
import js.lib.Promise;
import js.html.MetaElement;
import js.npm.jsdom.*;
#end

class Utils {
    static public function prettyUrl(url:String):String {
        var r = ~/^https?:\/\/(?:www\.)?/;
        var shortUrl = if (r.match(url)) {
            url.substr(r.matchedPos().len);
        } else {
            url;
        };
        return shortUrl.urlDecode();
    }

    #if nodejs
    static public function getMeta(url:String):Promise<{
        og:Array<{property:String, content:String}>,
        ld:Dynamic,
    }> {
        return js.npm.fetch.Fetch.fetch(url)
            .then(r ->
                if (!r.ok)
                    r.text().then(text ->
                        throw '${r.status} ${r.statusText}\n${text}'
                    );
                else
                    r.text()
            )
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
                var ld = try {
                    Json.parse(doc.querySelector("script[type='application/ld+json']").textContent);
                } catch (e) {
                    null;
                }

                {
                    og: og,
                    ld: ld,
                };
            });
    }
    #end

    #if nodejs
    static public function isUrlAccessible(url:String):js.lib.Promise<Int> {
        return js.npm.fetch.Fetch.fetch(url)
            .then(r -> r.status);
    }
    #elseif sys
    static public function isUrlAccessible(url:String):Outcome<Int, String> {
        var code = -1;
        var err = null;
        for (i in 0...3) {
            var p = new sys.io.Process("curl", [
                "-sSLkf", url,
                "-o", "/dev/null",
                "--retry", "3",
                "--connect-timeout", "30",
                "--max-redirs", "5", // fb posts may return inf redirects
                "--http1.0",
                "-A", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36"
            ]);
            code = p.exitCode();
            err = p.stderr.readAll().toString().rtrim();
            p.close();
            if (code != 0) {
                Sys.sleep(1);
            } else {
                break;
            }
        }
        return if (code == 0) {
            Success(code);
        } else {
            Failure(err);
        }
    }
    #end
}