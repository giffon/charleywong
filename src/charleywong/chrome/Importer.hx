package charleywong.chrome;

import js.lib.Promise;
import js.npm.pngjs.PNG;
import haxe.Resource;
import js.node.Buffer;
import haxe.Serializer;
import global.chrome.Runtime;
import haxe.io.Path;
import haxe.Json;
import js.html.*;
import js.Browser.*;
import charleywong.UrlExtractors.*;
using Lambda;
using StringTools;
using charleywong.ElementUtils;

class Importer {
    static public function importUrl(url:URL):Promise<{}> {
        return switch (url) {
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
                return Promise.reject('Cannot handle $url');
        }
    }

    static function importYt(url:URL):Promise<{}> {
        return switch (extractYouTubeProfile(url)) {
            case null:
                Promise.reject('Not a YouTube profile url.');
            case Handle(v) | Id(v):
                importYtProfile();
        }
    }

    static function importYtProfile():Promise<{}> {
        return getYtProfile().then(postToServer);
    }

    static function getYtProfile():Promise<YouTubeProfile> {
        return switch (extractYtAboutPage(document.location)) {
            case null:
                Promise.reject('只可以在 about page 輸入 YouTube Channel');
            case Handle(handle):
                ytCanonical().then(canonical -> {
                    url: canonical,
                    id: canonical.split("/").pop(),
                    name: ytName(),
                    description: ytDescription(),
                    location: ytLocation(),
                    links: ytLinks(),
                });
            case Id(id):
                Promise.resolve({
                    url: 'https://www.youtube.com/channel/$id',
                    id: id,
                    name: ytName(),
                    description: ytDescription(),
                    location: ytLocation(),
                    links: ytLinks(),
                });
        }
    }

    static function ytCanonical():Promise<String> {
        return window.fetch(Std.string(window.location), {
            cache: FORCE_CACHE,
        })
            .then(r -> r.text())
            .then(function (text) {
                var p = new DOMParser();
                var doc = p.parseFromString(text, TEXT_HTML);
                switch (doc.querySelector("link[rel='canonical']")) {
                    case null:
                        // pass
                    case link:
                        return link.getAttribute("href");
                }
                switch (doc.querySelector("meta[property='og:url']")) {
                    case null:
                        // pass
                    case meta:
                        return meta.getAttribute("content");
                }
                return null;
            });
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

    static function importFb(url:URL):Promise<{}> {
        trace("import fb: " + url);
        if (
            extractFbPost(url) != null ||
            switch (url) {
                case {
                    origin: "https://www.facebook.com",
                    pathname: "/photo/",
                }:
                    true;
                case _:
                    false;
            }
        ) {
            trace("importing fb post");
            final url:Promise<String> = if (url.pathname == "/permalink.php") {
                final params = parseSearch(url.search);
                Promise.resolve(Path.join([url.origin, url.pathname]) + '?story_fbid=' + params["story_fbid"].urlEncode() + "&id=" + params["id"].urlEncode());
            } else if (url.pathname == "/photo/") {
                final fbid = url.searchParams.get("fbid");
                final set = url.searchParams.get("set");
                window.fetch(Std.string(url), {
                    cache: NO_CACHE,
                })
                    .then(r -> r.text())
                    .then(text -> {
                        final r = new EReg('"https:\\\\/\\\\/www.facebook.com\\\\/([A-Za-z0-9_\\\\.\\\\-]+)\\\\/photos\\\\/${set}\\\\/${fbid}\\\\/', "");
                        return if (r.match(text)) {
                            final owner = r.matched(1);
                            'https://www.facebook.com/${owner}/photos/${set}/${fbid}/';
                        } else {
                            console.error('Cannot figure out the owner of this photo');
                            console.error(text);
                            throw 'Cannot figure out the owner of this photo';
                        }
                    });
            } else {
                Promise.resolve(Path.join([url.origin, url.pathname]));
            }

            return url.then(url -> postToServer(
                {
                        url: url,
                }
            ));
        }

        switch (extractFbHomePage(url)) {
            case null:
                //pass
            case handle:
                return importFbProfile(handle);
        }

        return Promise.reject('Cannot handle $url');
    }

    static function igHandle() {
        var link = document.getElementsByXPath("//article//header//*[@href]")[0];
        var href = (cast link:AnchorElement).href;
        var regexp = ~/^https:\/\/www\.instagram\.com\/([^\/]+)\/$/;
        if (regexp.match(href)) {
            return regexp.matched(1);
        } else {
            throw '$href is not an Instagram profile?';
        }
    }

    static function importIg(url:URL):Promise<{}> {
        switch (extractIgPost(url)) {
            case null:
                //pass
            case post:
                if (extractIgPost(document.location) != post) {
                    return Promise.reject('只可以在 Instagram post 中輸入');
                }
                return postToServer({
                    url: 'https://www.instagram.com/p/$post/',
                    igHandle: igHandle(),
                });
        }
        switch (extractIgProfilePage(url)) {
            case null:
                //pass
            case handle:
                return importIgProfile(handle);
        }
        return Promise.reject('Cannot handle $url');
    }

    static function getFbProfile(handle:String):Promise<FacebookProfile> {
        return Promise.resolve({
            url: 'https://www.facebook.com/$handle/'
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

    static function postToServer(data:Dynamic):Promise<{}> {
        return new Promise((resolve, reject) -> {
            Runtime.sendMessage(Serializer.run(Message.MsgPostToServer("/", data)), function(err) {
                if (err != null) {
                    alert(err);
                    reject(err);
                } else {
                    resolve(null);
                }
            });
        });
    }

    static function importFbProfile(handle:String):Promise<{}> {
        return getFbProfile(handle)
            .then(postToServer);
    }

    static function importIgProfile(handle:String):Promise<{}> {
        final profile = getIgProfile(handle);
        return postToServer(profile);
    }

    static function fbId():Promise<String> {
        return window.fetch(Std.string(document.location), {
            cache: FORCE_CACHE,
        })
            .then(response -> response.text())
            .then(content -> {
                var idRegexp = ~/"page":{"id":"([0-9]+)"/;
                if (idRegexp.match(content)) {
                    return idRegexp.matched(1);
                }

                var pageIDRegexp = ~/"props":{"pageID":"([0-9]+)"/;
                if (pageIDRegexp.match(content)) {
                    return pageIDRegexp.matched(1);
                }

                console.error("Cannot find Facebook page ID");
                console.error(content);
                throw "Cannot find Facebook page ID";
            });
    }

    static function fbName():String {
        return [
            for (e in document.querySelectorAll("#seo_h1_tag a, *[role='main'] h1, *[role='main'] h2"))
            (cast e:Element)
        ].find(e -> !e.matches("[hidden] *")).innerText.trim();
    }

    static function fbAboutRow(info:String):Promise<Null<Element>> {
        var images:Array<ImageElement> = [
            for (e in document.querySelectorAll('*[role="main"] img[width="20"][height="20"][src^="https://static.xx.fbcdn.net"]'))
            cast e
        ];
        return Promise.all(images.map(function(img) {
            img.crossOrigin = "Anonymous";
            return (untyped img.decode():Promise<{}>).then(_ -> {
                switch(img.naturalWidth) {
                    case 20 | 40:
                        //pass
                    case nw:
                        throw 'Image has a natural width of ${nw}, should be 20 or 40.\n${img.src}';
                }
                var canvas = document.createCanvasElement();
                canvas.width = img.naturalWidth;
                canvas.height = img.naturalHeight;
                var canvasContext = canvas.getContext("2d");
                canvasContext.drawImage(img, 0, 0);
                var imageData = canvasContext.getImageData(0, 0, img.naturalWidth, img.naturalHeight).data;
                var target = PNG.sync.read(switch (info) {
                    case "about": 
                        try {
                            new Buffer(Resource.getBytes('about-${img.naturalWidth}.png').getData());
                        } catch (e) {
                            throw 'Unable to get resource about-${img.naturalWidth}.png';
                        }
                    case "tel": 
                        try {
                            new Buffer(Resource.getBytes('tel-${img.naturalWidth}.png').getData());
                        } catch (e) {
                            throw 'Unable to get resource tel-${img.naturalWidth}.png';
                        }
                    case _:
                        throw 'Unknown info $info';
                });
                var mismatched = js.npm.pixelmatch.Pixelmatch.pixelmatch(target.data, imageData, null, img.naturalWidth, img.naturalHeight, {
                    threshold: 0.1,
                });
                mismatched == 0 ? img : null;
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
            switch (linkLines) {
                case [line, area]:
                    return {
                        line: line,
                        area: area,
                    };
                case [area]:
                    return {
                        line: null,
                        area: area,
                    };
                case []:
                    return null;
                case _:
                    return {
                        line: linkLines.slice(0, linkLines.length - 1).join("\n"),
                        area: linkLines[linkLines.length - 1],
                    };
            }
        }
    }

    static function fbContactEmail() {
        var regexp = ~/^mailto:(.+@.+?)(?:\?.+)?$/;
        var emails = [
            for (e in document.getElementsByXPath("//*[@role='main']//a[starts-with(@href, 'mailto:')]"))
            if (regexp.match(e.getAttribute("href")))
                regexp.matched(1) => regexp.matched(1)
        ].array();
        return if (emails.length == 0) {
            null;
        } else {
            emails[0];
        }
    }

    static function fbWebsites() {
        var igHandles = fbInstagram();
        var linkNodes = document.getElementsByXPath("//*[@role='main']//*[starts-with(text(),'http')][not(ancestor::*[@hidden])]//ancestor-or-self::a");
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
        final node = document.getElementsByXPath("//main//header//ul/following-sibling::div/span[1]")[0];
        if (node == null)
            return null;
        return node.innerText;
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
        final div = document.getElementsByXPath("//main//header//ul/following-sibling::div/h1")[0];
        if (div == null)
            return null;
        return div.innerText;
    }
}