package charleywong.chrome;

import haxe.Serializer;
import chrome.Runtime;
import haxe.io.Path;
import haxe.Json;
import js.html.*;
import js.Browser.*;
import charleywong.UrlExtractors.*;
using Lambda;
using StringTools;
using charleywong.chrome.Importer.ElementUtils;

class ElementUtils {
    static public function getElementsByXPath(context:Node, xpath:String):Array<Element> {
        var r = document.evaluate(xpath, context, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE);
        return [
            for (i in 0...r.snapshotLength)
            cast(r.snapshotItem(i), Element)
        ];
    }
}

class Importer {
    static public function importUrl(url:URL) {
        switch (url) {
            case {
                host: "www.facebook.com" | "facebook.com",
            }:
                importFb(url);
            case _:
                throw 'Cannot handle $url';
        }
    }

    static function importFb(url:URL) {
        switch (extractFbHomePage(url)) {
            case null:
                //pass
            case handle:
                importFbProfile(handle);
                return;
        }
        switch (url.pathname.split("/").slice(1, 3)) {
            case [handle, "posts" | "photos" | "videos"]:
                postToServer({
                    url: Path.join([url.origin, url.pathname])
                });
                return;
            case _:
                //pass
        }
        throw 'Cannot handle $url';
    }

    static function getFbProfile(handle:String):FacebookProfile {
        if (extractFbAboutPage(document.location) != handle) {
            throw '只可以在 about page 輸入 Facebook 專頁';
        }

        var id = fbId();

        return {
            url: 'https://www.facebook.com/$handle/',
            handle: handle.endsWith("-" + id) ? id : handle,
            id: id,
            name: fbName(),
            about: fbAbout(),
            addr: fbAddr(),
            email: fbContactEmail(),
            ig: fbInstagram(),
            websites: fbWebsites(),
            tel: fbTel(),
            categories: fbCategories(),
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
                    Runtime.sendMessage(Serializer.run(Message.MsgUpdateEntityIndex), function(_) {});
                } else {
                    r.text().then(alert);
                }
            });
    }

    static function importFbProfile(handle:String) {
        var profile = getFbProfile(handle);
        postToServer(profile);
    }

    static function fbId():String {
        var elems = document.getElementsByXPath("//div[starts-with(@id, 'PagesProfileAboutInfoPagelet_')]");
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
        return document.querySelector("#seo_h1_tag a").textContent.trim();
    }

    static function fbAbout() {
        var abouts = document.getElementsByXPath("//*[@role='main']//div[text()='MORE INFO']/parent::*/parent::*//div[text()='About']/following-sibling::*");
        return switch (abouts) {
            case []:
                null;
            case [about]:
                about.textContent.trim();
            case _:
                throw 'More than 1 about elements? $abouts';
        }
    }

    static function fbAddr() {
        var textNodes = document.getElementsByXPath("//a[contains(@href,'share.here.com')]/parent::*/parent::*//*[text()]");

        if (textNodes.length < 3) {
            return null;
        }

        return {
            line: textNodes[0].textContent,
            area: textNodes[1].textContent,
        };
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
        var links = document.getElementsByXPath("//*[@role='main']//a[@rel='noopener nofollow']//*[starts-with(text(),'http')]//ancestor::a");
        return if (links.length == 0)
            null;
        else
            links.map(link -> link.textContent);
    }

    static function fbTel():Null<String> {
        var callNodes = document.getElementsByXPath("//*[starts-with(text(),'Call ')]");
        switch (callNodes.length) {
            case 0:
                return null;
            case 1:
                //pass
            case n:
                throw 'There are ${n} "Call *".';
        }
        var callString:String = callNodes[0].textContent;
        var regex = ~/Call ([0-9 ]+)/;
        return if (regex.match(callString)) {
            ~/[^0-9]/g.replace(regex.matched(1), "");
        } else {
            null;
        }
    }

    static function fbCategories() {
        var categoryLinks = document.getElementsByXPath("//*[@role='main']//a[contains(@href, '/pages/category/')]");
        var searchLinks = document.getElementsByXPath("//*[@role='main']//a[contains(@href, '/search/pages/')]");
        return categoryLinks.map(e -> e.textContent).concat(searchLinks.map(e -> e.textContent));
    }

    static function fbInstagram() {
        switch (document.getElementsByXPath("//a[contains(@href,'instagram.com')]")) {
            case []:
                // pass
            case [linkNode]:
                var href:String = (cast linkNode:AnchorElement).href;
                switch (extractIgProfilePage(new URL(href))) {
                    case null:
                        // pass
                    case handle:
                        return handle;
                }
            case nodes:
                throw 'There are ${nodes.length} instagram links.';
        }

        // Somehow FB uses a tracking link before the link is hovered by a cursor...
        // https://l.facebook.com/l.php?u=https%3A%2F%2Finstagram.com%2Fgiffonio&h=AT34SwZ-XRno-h7GrzFe7uHQSzEZLwgpfsxlPhSJGcaj9m-enkRXHDjj6WS89wJ9effhvJXF4dTSnkmzECinQDVdjkCW1chH4fLNcrruY0jnd1s1XpaoQpyJtSRnzCRPxSKvyyE3D2dQmew9hB5a8g
        var linkNodes = document.getElementsByXPath("//a[starts-with(@href,'https://l.facebook.com/l.php?u=https%3A%2F%2Finstagram.com%2F')]");
        var igs = [
            for (linkNode in linkNodes)
            {
                var href = (cast linkNode:AnchorElement).href;
                var url = new URL(href);
                var uParam = url.search
                    .substr(1) // remove leading "?""
                    .split("&")
                    .find(kv -> kv.startsWith("u="));
                if (uParam != null)
                    switch (uParam.split("=")) {
                        case ["u", v]:
                            extractIgProfilePage(new URL(v.urlDecode()));
                        case _:
                            throw 'Cannot parse $url.';
                    }
            }
        ];
        switch (igs) {
            case []:
                // pass
            case [ig]:
                return ig;
            case _:
                throw 'There are multiple Instagram handles: ${igs.join(",")}.';
        }

        return null;
    }
}