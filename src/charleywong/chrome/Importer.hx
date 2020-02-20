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
            case _:
                throw 'Cannot handle $url';
        }
    }

    static function importFb(url:URL) {
        switch (extractFbPost(url)) {
            case null:
                //pass
            case handle:
                var postNode = document.querySelector('a[href*="${url.pathname + url.search}"]').closest(".userContentWrapper");
                var postTime = postNode.querySelector("abbr[data-utime]").dataset.utime;
                var sharedWithNode = postNode.querySelector("a.fbPrivacyAudienceIndicator");
                var sharedWith = sharedWithNode.dataset.tooltipContent;
                postToServer({
                    url: if (url.pathname == "/permalink.php") {
                        var params = parseSearch(url.search);
                        Path.join([url.origin, url.pathname]) + '?story_fbid=' + params["story_fbid"].urlEncode() + "&id=" + params["id"].urlEncode();
                    } else {
                        Path.join([url.origin, url.pathname]);
                    },
                    utime: postTime,
                    sharedWith: sharedWith,
                });
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

    static function importIgProfile(handle:String) {
        var profile = getIgProfile(handle);
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
        return document.querySelector("#seo_h1_tag a").innerText.trim();
    }

    static function fbAbout() {
        var abouts = document.getElementsByXPath("//*[@role='main']//div[text()='MORE INFO']/parent::*/parent::*//div[text()='About']/following-sibling::*");
        return switch (abouts) {
            case []:
                null;
            case [about]:
                about.innerText.trim();
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
            line: textNodes[0].innerText,
            area: textNodes[1].innerText,
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
            links.map(link -> link.innerText);
    }

    static function fbTel():Null<String> {
        var callNodes = document.getElementsByXPath("//*[starts-with(text(),'Call ')][text()!='Call Now']");

        switch (callNodes.length) {
            case 0:
                return null;
            case 1:
                //pass
            case n:
                throw 'There are ${n} "Call *".';
        }
        var callString:String = callNodes[0].innerText;
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
        return categoryLinks.map(e -> e.innerText).concat(searchLinks.map(e -> e.innerText));
    }

    static function fbInstagram() {
        var igHandles = document.getElementsByXPath("//*[@role='main']//a[contains(@href,'instagram.com')]")
            .map(linkNode -> extractIgProfilePage(new URL((cast linkNode:AnchorElement).href)))
            .filter(igHandle -> igHandle != null);

        // ignore duplicated
        igHandles = [
            for (ig in igHandles)
            ig => ig
        ].array();

        switch (igHandles) {
            case []:
                // pass
            case [handle]:
                return handle;
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