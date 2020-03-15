package charleywong.chrome;

import js.lib.Promise;
import js.npm.pngjs.PNG;
import haxe.Resource;
import js.node.Buffer;
import haxe.Serializer;
import chrome.Runtime;
import haxe.io.Path;
import haxe.Json;
import js.html.*;
import js.Browser.*;
import charleywong.UrlExtractors.*;
using Lambda;
using StringTools;
using charleywong.ElementUtils;

class Importer {
    static public function importUrl(url:URL) {
        switch (url) {
            case {
                host: "www.facebook.com" | "facebook.com",
            }:
                importFb(url);
            case {
                host: "www.instagram.com" | "instagram.com",
            }:
                importIg(url);
            case {
                host: "www.youtube.com" | "youtube.com"
            }:
                importYt(url);
            case _:
                throw 'Cannot handle $url';
        }
    }

    static function importYt(url:URL) {
        switch (extractYouTubeProfile(url)) {
            case null:
            case Handle(v) | Id(v):
                importYtProfile();
        }
    }

    static function importYtProfile() {
        var profile = getYtProfile();
        postToServer(profile);
    }

    static function getYtProfile():YouTubeProfile {
        switch (extractYtAboutPage(document.location)) {
            case null:
                throw '只可以在 about page 輸入 YouTube Channel';
            case Handle(handle):
                var canonical = ytCanonical();
                return {
                    url: canonical,
                    id: canonical.split("/").pop(),
                    name: ytName(),
                    description: ytDescription(),
                    location: ytLocation(),
                    links: ytLinks(),
                };
            case Id(id):
                return {
                    url: 'https://www.youtube.com/channel/$id',
                    id: id,
                    name: ytName(),
                    description: ytDescription(),
                    location: ytLocation(),
                    links: ytLinks(),
                };
        }
    }

    static function ytCanonical() {
        return switch (document.querySelector("link[rel='canonical']")) {
            case null: null;
            case link: link.getAttribute("href");
        }
    }

    static function ytName() {
        return document.querySelector("#channel-container yt-formatted-string.ytd-channel-name").innerText;
    }

    static function ytDescription() {
        return document.querySelector("yt-formatted-string#description").innerText;
    }

    static function ytLocation() {
        return switch (document.getElementsByXPath("//*[contains(text(),'Location:')]/ancestor::tr//yt-formatted-string")[1]) {
            case null: null;
            case e: e.innerText;
        }
    }

    static function ytLinks() {
        return [
            for (link in document.querySelectorAll("#links-container a.yt-simple-endpoint"))
            switch (new URL((cast link:AnchorElement).href)) {
                case url = {
                    origin: "https://www.youtube.com",
                    pathname: "/redirect",
                }:
                    url.searchParams.get("q");
                case _:
                    null;
            }
        ].filter(url -> url != null);
    }

    static function importFb(url:URL) {
        switch (extractFbPost(url)) {
            case null:
                //pass
            case handle:
                var href = if (url.pathname == "/permalink.php") {
                    url.pathname + url.search;
                } else {
                    url.pathname;
                }
                var url = if (url.pathname == "/permalink.php") {
                    var params = parseSearch(url.search);
                    Path.join([url.origin, url.pathname]) + '?story_fbid=' + params["story_fbid"].urlEncode() + "&id=" + params["id"].urlEncode();
                } else {
                    Path.join([url.origin, url.pathname]);
                }

                if (document.querySelector('.userContentWrapper') != null) { //old layout
                    var postNode = document.querySelector('.userContentWrapper a[href*="${href}"]').closest(".userContentWrapper");
                    var postTime = postNode.querySelector("abbr[data-utime]").dataset.utime;
                    var sharedWithNode = postNode.querySelector("*[data-tooltip-content^='Shared with: '], a.fbPrivacyAudienceIndicator");
                    var sharedWith = if (sharedWithNode.dataset.tooltipContent.startsWith("Shared with: "))
                        sharedWithNode.dataset.tooltipContent.substr("Shared with: ".length);
                    else
                        sharedWithNode.dataset.tooltipContent;
                    postToServer({
                        url: url,
                        utime: postTime,
                        sharedWith: sharedWith,
                    });
                } else {
                    var postNode = document.querySelector('a[href*="${href}"]').closest("div[role='article']");
                    var sharedWith = postNode.querySelector("img[width='12'][alt]").getAttribute("alt");
                    postToServer({
                        url: url,
                        sharedWith: sharedWith,
                    });
                }
                return;
        }

        switch (extractFbHomePage(url)) {
            case null:
                //pass
            case handle:
                importFbProfile(handle);
                return;
        }

        throw 'Cannot handle $url';
    }

    static function igHandle() {
        var h2 = document.getElementsByXPath("//article//header//a[text()!='Follow']")[0];
        var href = (cast h2:AnchorElement).href;
        var regexp = ~/^https:\/\/www\.instagram\.com\/([^\/]+)\/$/;
        if (regexp.match(href)) {
            return regexp.matched(1);
        } else {
            throw '$href is not an Instagram profile?';
        }
    }

    static function importIg(url:URL) {
        switch (extractIgPost(url)) {
            case null:
                //pass
            case post:
                if (extractIgPost(document.location) != post) {
                    throw '只可以在 Instagram post 中輸入';
                }
                postToServer({
                    url: 'https://www.instagram.com/p/$post/',
                    igHandle: igHandle(),
                });
                return;
        }
        switch (extractIgProfilePage(url)) {
            case null:
                //pass
            case handle:
                importIgProfile(handle);
                return;
        }
        throw 'Cannot handle $url';
    }

    static function getFbProfile(handle:String):Promise<FacebookProfile> {
        if (extractFbAboutPage(document.location) != handle) {
            throw '只可以在 about page 輸入 Facebook 專頁';
        }

        var id = fbId();

        return Promise.all([
            fbAbout(),
            fbTel(),
        ]).then(function(infos) {
            var about = infos[0];
            var tel = infos[1];
            return {
                url: 'https://www.facebook.com/$handle/',
                handle: handle.endsWith("-" + id) ? id : handle,
                id: id,
                name: fbName(),
                about: about,
                addr: fbAddr(),
                email: fbContactEmail(),
                websites: fbWebsites(),
                tel: tel,
                categories: fbCategories(),
            };
        });
    }

    static function getIgProfile(handle:String):InstagramProfile {
        if (extractIgProfilePage(document.location) != handle) {
            throw '只可以在 Instagram profile page 輸入';
        }

        return {
            url: 'https://www.instagram.com/$handle/',
            handle: handle,
            name: igName(),
            about: igAbout(),
            website: igWebsite(),
        };
    }

    static function postToServer(data:Dynamic) {
        window.fetch(Path.join([Content.serverEndpoint]), {
            method: "POST",
            mode: CORS,
            cache: NO_CACHE,
            headers: {
                'Content-Type': 'application/json'
            },
            body: Json.stringify(data),
        })
            .then(function(r) {
                if (r.status == 200) {
                    Runtime.sendMessage(Serializer.run(Message.MsgUpdateEntityIndex(false)), function(_) {});
                } else {
                    r.text().then(alert);
                }
            });
    }

    static function importFbProfile(handle:String) {
        getFbProfile(handle)
            .then(postToServer);
    }

    static function importIgProfile(handle:String) {
        var profile = getIgProfile(handle);
        postToServer(profile);
    }

    static function fbId():String {
        var elems = document.getElementsByXPath("//div[starts-with(@id, 'PagesProfileAboutInfoPagelet_')]");

        // new FB layout?
        if (elems.length == 0) {
            var idRegexp = ~/"page":{"id":"([0-9]+)"/;
            for (script in document.getElementsByTagName("script")) {
                var content = script.innerText;
                if (idRegexp.match(content)) {
                    return idRegexp.matched(1);
                }
            }
            throw 'Cannot find "page":{"id":"([0-9]+)" in scripts.';
        }

        if (elems.length != 1)
            throw 'There are ${elems.length} #PagesProfileAboutInfoPagelet_*.';

        var e = elems[0];
        var regexp = ~/^PagesProfileAboutInfoPagelet_([0-9]+)$/;
        if (regexp.match(e.id))
            return regexp.matched(1);
        else
            throw 'Unknown PagesProfileAboutInfoPagelet_ ID format ${e.id}.';
    }

    static function fbName():String {
        return document.querySelector("#seo_h1_tag a, *[role='main'] h1").innerText.trim();
    }

    static function fbAboutRow(info:String):Promise<Null<Element>> {
        var images:Array<ImageElement> = [
            for (e in document.querySelectorAll('*[role="main"] img[width="20"][height="20"]'))
            cast e
        ];
        var target = PNG.sync.read(switch (info) {
            case "about": new Buffer(Resource.getBytes("about.png").getData());
            case "tel": new Buffer(Resource.getBytes("tel.png").getData());
            case _: throw 'Unknown info $info';
        });
        return Promise.all(images.map(function(img) {
            return new Promise(function(resolve, reject) {
                window.fetch(img.src, {
                    cache: FORCE_CACHE,
                })
                    .then(r -> r.arrayBuffer())
                    .then(function(imgArrayBuffer) {
                        var imgPng = PNG.sync.read(new Buffer(imgArrayBuffer));
                        var mismatched = js.npm.pixelmatch.Pixelmatch.pixelmatch(target.data, imgPng.data, null, 20, 20, {
                            threshold: 0.1,
                        });
                        resolve(mismatched == 0 ? img : null);
                    })
                    .catchError(reject);
            });
        }))
            .then(function(images){
                return images.find(img -> img != null);
            })
            .then(function(img:Null<ImageElement>) {
                return img == null ? null : img.getElementsByXPath("ancestor::div[descendant::*[text()]]").pop();
            });
    }

    static function fbAboutOld():Bool {
        return document.getElementsByXPath("//*[@role='main']//div[text()='MORE INFO']").length > 0;
    }

    static function fbAbout() {
        if (fbAboutOld()) {
            var abouts = document.getElementsByXPath("//*[@role='main']//div[text()='MORE INFO']/parent::*/parent::*//div[text()='About']/following-sibling::*");
            return Promise.resolve(switch (abouts) {
                case []:
                    null;
                case [about]:
                    about.innerText.trim();
                case _:
                    throw 'More than 1 about elements? $abouts';
            });
        } else {
            return fbAboutRow("about")
                .then(row -> if (row == null) {
                    null;
                } else {
                    row.getElementsByXPath(".//*[text()]")[0].textContent;
                });
        }
    }

    static function fbAddr() {
        if (fbAboutOld()) {
            var textNodes = document.getElementsByXPath("//a[contains(@href,'share.here.com')]/parent::*/parent::*//*[text()]");

            if (textNodes.length < 3) {
                return null;
            }

            return {
                line: textNodes[0].innerText,
                area: textNodes[1].innerText,
            };
        } else {
            var links = document.querySelectorAll("a[href^='https://l.facebook.com/l.php?u=https%3A%2F%2Fwww.google.com%2Fmaps%2F']");
            if (links.length == 0)
                return null;
            if (links.length != 1)
                throw 'There are ${links.length} Google Maps links.';
            var linkLines = (cast links[0]:AnchorElement).text.split("\n");
            if (linkLines.length != 2)
                throw 'There are ${linkLines.length} address lines.';
            return {
                line: linkLines[0],
                area: linkLines[1],
            };
        }
    }

    static function fbContactEmail() {
        var emailLinks = document.getElementsByXPath("//*[@role='main']//a[starts-with(@href, 'mailto:')]");
        return if (emailLinks.length == 0) {
            null;
        } else if (emailLinks.length == 1) {
            var regexp = ~/^mailto:(.+)$/;
            if (regexp.match(emailLinks[0].getAttribute("href")))
                regexp.matched(1);
            else
                throw 'Cannot parse ${emailLinks[0].getAttribute("href")}';
        } else {
            throw 'More than 1 email?';
        }
    }

    static function fbWebsites() {
        var igHandles = fbInstagram();
        var linkNodes = document.getElementsByXPath("//*[@role='main']//*[starts-with(text(),'http')]//ancestor-or-self::a");
        var links = linkNodes
            .map(link -> link.innerText)
            .map(link -> switch(extractIgProfilePage(new URL(link))) {
                case null: link;
                case ig: 'https://www.instagram.com/$ig/';
            })
            .concat(igHandles.map(ig -> 'https://www.instagram.com/$ig/'));
        
        // remove duplicated
        return [
            for (link in links)
            link => link
        ].array();
    }

    static function fbTel():Promise<Null<String>> {
        return (if (fbAboutOld()) {
            var callNodes = document.getElementsByXPath("//*[@role='main']//*[starts-with(text(),'Call ')][text()!='Call Now']");

            switch (callNodes.length) {
                case 0:
                    return null;
                case 1:
                    //pass
                case n:
                    throw 'There are ${n} "Call *".';
            }
            var callString = callNodes[0].innerText;
            var regex = ~/^Call ([0-9 \-]+)$/;
            return Promise.resolve(if (regex.match(callString)) {
                regex.matched(1);
            } else {
                null;
            });
        } else {
            fbAboutRow("tel")
                .then(row -> if (row == null) {
                    null;
                } else {
                    row.getElementsByXPath(".//*[text()]")[0].innerText;
                });
        }).then(function(telString:Null<String>) {
            return telString == null ? null : ~/[^0-9]/g.replace(telString, "");
        });
    }

    static function fbCategories() {
        if (fbAboutOld()) {
            var categoryLinks = document.getElementsByXPath("//*[@role='main']//a[contains(@href, '/pages/category/')]");
            var searchLinks = document.getElementsByXPath("//*[@role='main']//a[contains(@href, '/search/pages/')]");
            return categoryLinks.map(e -> e.innerText).concat(searchLinks.map(e -> e.innerText));
        } else {
            var searchLinks = document.querySelectorAll("*[role='main'] a[href^='https://www.facebook.com/search/']");
            return [
                for (link in searchLinks)
                (cast link:AnchorElement).innerText
            ];
        }
    }

    static function fbInstagram() {
        var igHandles = document.getElementsByXPath("//*[@role='main']//a[contains(@href,'instagram.com')]")
            .map(linkNode -> new URL((cast linkNode:AnchorElement).href))
            .map(url -> extractIgProfilePage(switch (url) {
                case {
                    origin: "https://l.facebook.com",
                    pathname: "/l.php",
                }:
                    var u = url.searchParams.get("u");
                    new URL(u);
                case _:
                    url;
            }))
            .filter(igHandle -> igHandle != null);

        // ignore duplicated
        igHandles = [
            for (ig in igHandles)
            ig => ig
        ].array();

        if (igHandles.length > 0) {
            return igHandles;
        }

        // Somehow FB uses a tracking link before the link is hovered by a cursor...
        // https://l.facebook.com/l.php?u=https%3A%2F%2Finstagram.com%2Fgiffonio&h=AT34SwZ-XRno-h7GrzFe7uHQSzEZLwgpfsxlPhSJGcaj9m-enkRXHDjj6WS89wJ9effhvJXF4dTSnkmzECinQDVdjkCW1chH4fLNcrruY0jnd1s1XpaoQpyJtSRnzCRPxSKvyyE3D2dQmew9hB5a8g
        var linkNodes = document.getElementsByXPath("//a[starts-with(@href,'https://l.facebook.com/l.php?u=https%3A%2F%2Finstagram.com%2F')]");
        var igs = [
            for (linkNode in linkNodes)
            {
                var href = (cast linkNode:AnchorElement).href;
                var url = new URL(href);
                var u = url.searchParams.get("u");
                if (u != null)
                    extractIgProfilePage(new URL(u));
            }
        ];

        // ignore duplicated
        return igs = [
            for (ig in igs)
            ig => ig
        ].array();
    }

    static function igName() {
        var h1s = document.getElementsByXPath("//main//header//h1");
        if (h1s[1] != null)
            return h1s[1].innerText;
        else if (h1s[0] != null)
            return h1s[0].innerText;
        else
            throw document.getElementsByXPath("//main//header")[0].innerText;
    }

    static function igWebsite() {
        var as = document.getElementsByXPath("//main//header//a[contains(@rel,'me')]");
        switch (as) {
            case []:
                return null;
            case [a]:
                var href:String = (cast a:AnchorElement).href;
                var regexp = ~/^https:\/\/l\.instagram\.com\/\?u=([^&]+).*$/;
                if (regexp.match(href)) {
                    return regexp.matched(1).urlDecode();
                } else {
                    throw 'Cannot parse $href';
                }
            case _:
                throw 'There are more then 1 matched links.';
        }
    }

    static function igAbout() {
        var aboutElement = document.getElementsByXPath("//main//header/section/div[2]/span")[0];
        return aboutElement != null ? aboutElement.innerText : null;
    }
}