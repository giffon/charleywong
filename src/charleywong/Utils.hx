package charleywong;

import haxe.*;
import tink.core.*;
using StringTools;
import haxe.xml.Access;
import haxe.xml.Fast;

#if nodejs
import js.lib.Promise;
import js.html.MetaElement;
import js.npm.jsdom.*;
import CrossFetch.fetch;
import abort_controller.AbortController;
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
    static public function followRedirect(url:String):Promise<String> {
        return if (~/https?:\/\/bit\.do\//.match(url)) {
            fetch("https://bit.do/expand/" + url.split("/").pop())
                .then(r -> {
                    if (r.ok)
                        r.text().then(html -> {
                            var text = new Access(Xml.parse(html)).node.pre.innerHTML;
                            var r = ~/^Redirects to: (.+)$/m;
                            if (r.match(text))
                                r.matched(1);
                            else
                                throw "Cannot find 'Redirects to:'.\n" + html;
                        });
                    else
                        r.text().then(text -> throw text);
                });
        } else {
            final controller = new AbortController();
            fetch(url, {
                redirect: FOLLOW,
                signal: cast controller.signal,
            })
                .then(response -> {
                    controller.abort();
                    response.url;
                });
        }
    }

    static public function getCanonical(url:String):Promise<Null<String>> {
        return fetch(url)
            .then(r ->
                if (!r.ok)
                    r.text().then(text ->
                        throw '${r.status} ${r.statusText}\n${text}'
                    );
                else
                    r.text()
            )
            .then(text -> {
                final doc = new JSDOM(text, {
                    virtualConsole: new VirtualConsole(),
                }).window.document;
                final meta:MetaElement = cast doc.querySelector("link[rel='canonical']");
                if (meta == null) {
                    trace("No link[rel='canonical']");
                    trace(text);
                    url;
                } else {
                    final href = meta.getAttribute("href");
                    href;
                }
            });
    }

    static public function getMeta(url:String):Promise<{
        og:Array<{property:String, content:String}>,
        ld:Dynamic,
    }> {
        final abortController = new AbortController();
        Timer.delay(() -> abortController.abort(), 20 * 1000); // 20 seconds
        return fetch(url, {
            headers: {
                "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36",
            },
            signal: cast abortController.signal,
        })
            .then(r ->
                if (!r.ok)
                    r.text().then(text ->
                        throw '${r.status} ${r.statusText}\n${text}'
                    );
                else
                    r.text()
            )
            .then(text -> {
                final doc = new JSDOM(text, {
                    virtualConsole: new VirtualConsole(),
                }).window.document;

                final og:Array<{property:String, content:String}> = [];
                for (meta in doc.querySelectorAll("meta[property^='og:'],meta[property^='article:']")) {
                    final meta:MetaElement = cast meta;
                    og.push({
                        property: meta.getAttribute("property"),
                        content: meta.content,
                    });
                }

                final ld = try {
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
        return fetch(url)
            .then(r -> cast r.status);
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