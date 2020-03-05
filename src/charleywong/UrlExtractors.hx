package charleywong;

import haxe.io.Path;
import js.html.URL;
using StringTools;

typedef ParsedUrl = {
    var origin(default,null):String;
    var pathname:String;
    var search:String;
}

enum Ident {
    Id(v:String);
    Handle(v:String);
}

class UrlExtractors {
    static public function cleanUrl(url:String) {
        var pUrl = new URL(url);
        return switch (pUrl) {
            case extractFbPost(_) => fb if (fb != null):
                if (pUrl.pathname == "/permalink.php") {
                    var params = parseSearch(pUrl.search);
                    'https://www.facebook.com/permalink.php?story_fbid=${params["story_fbid"]}&id=${params["id"]}';
                } else {
                    Path.removeTrailingSlashes('https://www.facebook.com' + pUrl.pathname);
                }
            case extractIgPost(_) => post if (post != null):
                'https://www.instagram.com/p/$post/';
            case extractFbHomePage(_) => fb if (fb != null):
                'https://www.facebook.com/$fb/';
            case extractIgProfilePage(_) => ig if (ig != null):
                'https://www.instagram.com/$ig/';
            case extractYouTubeProfile(_) => Id(id):
                'https://www.youtube.com/channel/$id';
            case extractYouTubeProfile(_) => Handle(handle):
                'https://www.youtube.com/$handle';
            case extractTwitterProfile(_) => t if (t != null):
                'https://twitter.com/$t';
            case {
                pathname: "" | "/",
                search: ""
            }:
                pUrl.origin;
            case _:
                url;
        }
    }

    static public function extractYouTubeProfile(url:ParsedUrl):Null<Ident> {
        // https://support.google.com/youtube/answer/6180214
        var regex = ~/^https?:\/\/(?:www\.)?youtube\.com$/i;
        return if (regex.match(url.origin))
            switch(url.pathname.split("/").slice(0, 3)) {
                case ["", "watch"]: null;
                case ["", handle]: Handle(handle.toLowerCase());
                case ["", "c" | "user", handle]: Handle(handle.toLowerCase());
                case ["", "channel", id]: Id(id);
                case ["", handle, _]: Handle(handle.toLowerCase());
                case _: null;
            }
        else
            null;
    }

    static public function extractTwitterProfile(url:ParsedUrl):Null<String> {
        var regex = ~/^https?:\/\/(?:www\.)?twitter\.com$/i;
        var handle =  if (regex.match(url.origin))
            switch(url.pathname.split("/")) {
                case ["", handle]: handle;
                case ["", handle, ""]: handle;
                case _: return null;
            }
        else
            return null;

        if (handle.startsWith("@")) {
            handle = handle.substr(1);
        }
        return handle.toLowerCase();
    }

    static public function extractFbAboutPage(url:ParsedUrl) {
        return if (url.origin == "https://www.facebook.com")
            switch(url.pathname.split("/")) {
                case ["", "pg", handle, "about", ""]:
                    var fbIdRegexp = ~/^.+-([0-9]+)$/;
                    if (fbIdRegexp.match(handle))
                        fbIdRegexp.matched(1);
                    else
                        handle;
                case _: null;
            }
        else
            null;
    }

    static public function extractFbHomePage(url:ParsedUrl) {
        var regex = ~/^https?:\/\/(?:www\.|m\.)?facebook\.com$/i;
        if (regex.match(url.origin)) {
            var handle = switch(url.pathname.split("/")) {
                case ["", handle]: handle;
                case ["", handle, ""]: handle;
                case _: null;
            }
            return switch (handle) {
                case null | "permalink.php":
                    null;
                case "profile.php":
                    parseSearch(url.search)["id"];
                case _:
                    var fbIdRegexp = ~/^.+-([0-9]+)$/;
                    if (fbIdRegexp.match(handle))
                        fbIdRegexp.matched(1);
                    else
                        handle;
            }
        }
        return null;
    }

    static public function parseSearch(search:String):Map<String, Null<String>> {
        if (search.charAt(0) == "?")
            search = search.substr(1);

        var map = new Map();
        for (item in search.split("&"))
            switch (item.split("=")) {
                case [k]:
                    map[k] = null;
                case [k, v]:
                    map[k] = v.urlDecode();
                case _:
                    throw 'Cannot parse $item';
            }
        return map;
    }

    static public function extractFbPost(url:ParsedUrl) {
        var regex = ~/^https?:\/\/(?:www\.|m\.)?facebook\.com$/i;
        if (regex.match(url.origin)) {
            switch(url.pathname.split("/").slice(0, 3)) {
                case ["", handle, "posts" | "photos" | "videos" | "notes"]:
                    return handle;
                case _:
                    //pass
            }

            if (url.pathname == "/permalink.php") {
                var params = parseSearch(url.search);
                return params["id"];
            }
        }

        return null;
    }

    static public function extractIgProfilePage(url:ParsedUrl) {
        var regex = ~/^https?:\/\/(?:www\.)?instagram\.com$/i;
        return if (regex.match(url.origin))
            switch(url.pathname.split("/")) {
                case ["", handle]: handle.toLowerCase();
                case ["", handle, ""]: handle.toLowerCase();
                case _: null;
            }
        else
            null;
    }

    static public function extractIgPost(url:ParsedUrl) {
        var regex = ~/^https?:\/\/(?:www\.)?instagram\.com$/i;
        return if (regex.match(url.origin))
            switch(url.pathname.split("/")) {
                case ["", "p", post]: post;
                case ["", "p", post, ""]: post;
                case _: null;
            }
        else
            null;
    }
}