package charleywong;

import CrossFetch.fetch;
import js.lib.Promise;
import js.npm.jimp.Jimp;
import js.node.Buffer;
import js.html.URL;
import charleywong.UrlExtractors.*;
using charleywong.PromiseTools;
using StringTools;
using Lambda;

/**
    Renders the 1200x630 entity profile pic (`/:entityId/profile.png`),
    which is used as the og:image and the profile pic on the entity page.
**/
class ProfilePic {
    static final font = JimpText.loadFont(JimpFonts.SANS_64_BLACK);

    static function getPicOfText(text:String):Promise<Buffer> {
        if (text == null || text.trim() == "") {
            return new Jimp({width: 1, height: 1, color: "#FFFFFF"}).getBuffer(JimpMime.png);
        }
        return font.then(function(font) {
            final tw = JimpText.measureText(font, text);
            final th = JimpText.measureTextHeight(font, text);
            final padding = 20;
            final size = Std.int(Math.max(tw, th) + padding + padding);
            return new Jimp({width: size, height: size, color: "#FFFFFF"})
                .print({font: font, x: padding, y: size * 0.5 - th * 0.5, text: text})
                .getBuffer(JimpMime.png);
        });
    }

    static function getOgImage(url:String) {
        return Utils.getMeta(url)
            .then(meta -> {
                switch (meta.og.find(og -> og.property == "og:image")) {
                    case null:
                        throw "no og:image";
                    case {content: ogImageUrl}:
                        fetch(ogImageUrl)
                            .then(r -> if (!r.ok) {
                                throw r.status;
                            } else {
                                r.arrayBuffer();
                            })
                            .then(ab -> node.buffer.Buffer.from(ab));
                }
            });
    }

    static function getPic(profileUrls:Array<String>, width:Int):Promise<Buffer> {
        for (i => url in profileUrls) {
            switch (new URL(url)) {
                case extractFbHomePage(_) => fb if (fb != null):
                    return fetch('https://graph.facebook.com/${Facebook.apiVersion}/${fb}/picture?type=square&width=${width}&height=${width}')
                        .then(r -> if (!r.ok) {
                            throw r.status;
                        } else if (r.url.endsWith(".gif")) {
                            throw "no profile pic set";
                        } else {
                            r.arrayBuffer();
                        })
                        .then(ab -> node.buffer.Buffer.from(ab))
                        .catchError(err -> {
                            getPic(profileUrls.slice(i+1), width);
                        });
                case extractIgProfilePage(_) => p if (p != null):
                    return getOgImage(url)
                        .catchError(err -> {
                            getPic(profileUrls.slice(i+1), width);
                        });
                case extractTelegramProfile(_) => p if (p != null):
                    return getOgImage(url)
                        .catchError(err -> {
                            getPic(profileUrls.slice(i+1), width);
                        });
                case _: //pass
            }
        }
        return Promise.reject(null);
    }

    static function getEntityPic(e:Entity, width:Int):Promise<Buffer> {
        final webpages = e.webpages.map(p -> p.url);
        // prefer facebook profile pic
        webpages.sort((a,b) -> switch [a.startsWith("https://www.facebook.com/"), b.startsWith("https://www.facebook.com/")] {
            case [true, false]: -1;
            case [false, true]: 1;
            case _: 0;
        });
        return getPic(webpages, width)
            .catchError(err -> getPicOfText(e.name[en]));
    }

    static public function render(entity:Entity):Promise<Buffer> {
        final width = Site.entityProfilePicWidth;
        final height = Site.entityProfilePicHeight;
        final border = 46;
        final w = height - border - border;
        return getEntityPic(entity, w)
            .then(function(pic) {
                final frame = "static/images/charley-wong-profile-cover.png";
                return Promise.all([Jimp.read(pic), Jimp.read(frame)])
                    .then(function(args) {
                        final pic:Jimp = args[0];
                        final frame:Jimp = args[1];
                        return new Jimp({width: width, height: height, color: "#f4a948"})
                            .composite(pic.resize({w: w, h: w}), (width - height) * 0.5 + border, border)
                            .composite(frame, 0, 0)
                            .getBuffer(JimpMime.png);
                    });
            });
    }
}
