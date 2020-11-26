package charleywong;

import haxe.xml.Access;
import haxe.xml.Fast;
#if nodejs
import js.npm.fetch.Fetch;
#end
import js.lib.Promise;
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
    #if nodejs
    static public function followRedirect(url:String):Promise<String> {
        return if (~/https?:\/\/bit\.do\//.match(url)) {
            Fetch.fetch("https://bit.do/expand/" + url.split("/").pop())
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
            Fetch.fetch(url, {
                redirect: Follow,
            })
                .then(response -> response.url);
        }
    }
    #end

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
            case extractTwitchProfile(_) => t if (t != null):
                'https://www.twitch.tv/$t';
            case extractTelegramProfile(_) => t if (t != null):
                'https://t.me/$t';
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
        var regex = ~/^https?:\/\/(?:www\.|m\.)?youtube\.com$/i;
        return if (regex.match(url.origin))
            switch(url.pathname.split("/").slice(0, 3)) {
                case ["", "watch" | "playlist"]: null;
                case ["", handle]: Handle(handle.toLowerCase());
                case ["", "c" | "user", handle]: Handle(handle.toLowerCase());
                case ["", "channel", id]: Id(id);
                case ["", handle, _]: Handle(handle.toLowerCase());
                case _: null;
            }
        else
            null;
    }

    static public function extractTwitchProfile(url:ParsedUrl):Null<String> {
        var regex = ~/^https?:\/\/(?:www\.)?twitch\.tv$/i;
        return if (regex.match(url.origin))
            switch(url.pathname.split("/")) {
                case ["", handle]: handle;
                case ["", handle, ""]: handle;
                case _: return null;
            }
        else
            return null;
    }

    static public function extractTelegramProfile(url:ParsedUrl):Null<String> {
        var regex = ~/^https?:\/\/?t\.me$/i;
        return if (regex.match(url.origin))
            switch(url.pathname.split("/")) {
                case ["", handle]: handle;
                case ["", handle, ""]: handle;
                case _: return null;
            }
        else
            return null;
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
        var handle = if (url.origin == "https://www.facebook.com")
            switch(url.pathname.split("/")) {
                case ["", "pg", handle, "about", ""]:
                    handle;
                case ["", handle, "about"] | ["", handle, "about", ""]:
                    handle;
                case _: null;
            }
        else
            null;
        if (handle == null) {
            return null;
        } else {
            var fbIdRegexp = ~/^.+-([0-9]+)$/;
            return if (fbIdRegexp.match(handle))
                fbIdRegexp.matched(1);
            else
                handle;
        }
    }

    static public function extractYtAboutPage(url:ParsedUrl) {
        return if (url.origin == "https://www.youtube.com")
            switch(url.pathname.split("/")) {
                case ["", "channel", id, "about"]:
                    Id(id);
                case
                    ["", "c", handle, "about"]
                |   ["", handle, "about"]
                |   ["", "user", handle, "about"]
                :
                    Handle(handle);
                case _: null;
            }
        else
            null;
    }

    static public function extractFbHomePage(url:ParsedUrl) {
        var regex = ~/^https?:\/\/(?:www\.|m\.)?(?:facebook\.com|fb\.me|fb\.com)$/i;
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

    static public function extractFbUrl(url:ParsedUrl) {
        var regex = ~/^https?:\/\/(?:[^\.]+\.)?(?:facebook\.com|fb\.me|fb\.com)$/i;
        var fbIdRegexp = ~/^.+-([0-9]+)$/;
        if (regex.match(url.origin)) {
            var pathParts = url.pathname.split("/");
            switch (pathParts.slice(0, 5)) {
                case ["", "page", "category", _, handle]:
                    return if (fbIdRegexp.match(handle))
                        fbIdRegexp.matched(1);
                    else
                        handle;
                case _:
                    // pass
            }
            switch (pathParts.slice(0, 3)) {
                case ["", "pg", handle]:
                    return if (fbIdRegexp.match(handle))
                        fbIdRegexp.matched(1);
                    else
                        handle;
                case _:
                    // pass
            }
            return switch (pathParts.slice(0, 2)) {
                case ["", "profile.php"]:
                    parseSearch(url.search)["id"];
                case ["", null]:
                    null;
                case ["", handle]:
                    if (fbIdRegexp.match(handle))
                        fbIdRegexp.matched(1);
                    else
                        handle;
                case _:
                    null;
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
                case ["", "_u", handle]: handle.toLowerCase();
                case ["", "_u", handle, ""]: handle.toLowerCase();
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