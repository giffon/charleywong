package charleywong.chrome;

import haxe.Json;
import js.html.*;
import js.Browser.*;
using StringTools;
using charleywong.chrome.Importer.ElementUtils;

typedef ParsedUrl = {
    var origin(default,null):String;
    var pathname:String;
}

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
    static function extractFbAboutPage(url:ParsedUrl) {
        return if (url.origin == "https://www.facebook.com")
            switch(url.pathname.split("/")) {
                case ["", "pg", handle, "about", ""]: handle;
                case _: null;
            }
        else
            null;
    }

    static function extractFbHomePage(url:ParsedUrl) {
        return if (url.origin == "https://www.facebook.com")
            switch(url.pathname.split("/")) {
                case ["", handle, ""]: handle;
                case _: null;
            }
        else
            null;
    }

    static public function importUrl(url:URL) {
        switch (url) {
            case {
                host: "www.facebook.com" | "facebook.com",
            }:
                importFb(url);
            case _:
                alert('Cannot handle $url');
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
        alert('Cannot handle $url');
    }

    static function importFbProfile(handle:String) {
        if (extractFbAboutPage(document.location) != handle) {
            alert('只可以在 about page 輸入 Facebook 專頁');
            return;
        }

        var info = {
            id: fbId(),
        };
        alert(Json.stringify(info, null, "  "));
    }

    static function fbId():String {
        var elems = document.getElementsByXPath("//div[starts-with(@id, 'PagesProfileAboutInfoPagelet_')]");
        if (elems.length != 1)
            throw '找到 ${elems.length} 個 #PagesProfileAboutInfoPagelet_*';

        var e = elems[0];
        var regexp = ~/^PagesProfileAboutInfoPagelet_([0-9]+)$/;
        if (regexp.match(e.id))
            return regexp.matched(1);
        else
            throw 'Unknown PagesProfileAboutInfoPagelet_ ID format ${e.id}';
    }
}