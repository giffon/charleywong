package charleywong;

typedef ParsedUrl = {
    var origin(default,null):String;
    var pathname:String;
}

class UrlExtractors {
    static public function extractFbAboutPage(url:ParsedUrl) {
        return if (url.origin == "https://www.facebook.com")
            switch(url.pathname.split("/")) {
                case ["", "pg", handle, "about", ""]: handle;
                case _: null;
            }
        else
            null;
    }

    static public function extractFbHomePage(url:ParsedUrl) {
        var regex = ~/^https?:\/\/(?:www\.)?facebook\.com$/i;
        return if (regex.match(url.origin))
            switch(url.pathname.split("/")) {
                case ["", handle]: handle;
                case ["", handle, ""]: handle;
                case _: null;
            }
        else
            null;
    }

    static public function extractFbPost(url:ParsedUrl) {
        var regex = ~/^https?:\/\/(?:www\.)?facebook\.com$/i;
        return if (regex.match(url.origin))
            switch(url.pathname.split("/").slice(0, 3)) {
                case ["", handle, "posts" | "photos" | "videos" | "notes"]:
                    handle;
                case _:
                    null;
            }
        else
            null;
    }

    static public function extractIgProfilePage(url:ParsedUrl) {
        var regex = ~/^https?:\/\/(?:www\.)?instagram\.com$/i;
        return if (regex.match(url.origin))
            switch(url.pathname.split("/")) {
                case ["", handle]: handle;
                case ["", handle, ""]: handle;
                case _: null;
            }
        else
            null;
    }
}