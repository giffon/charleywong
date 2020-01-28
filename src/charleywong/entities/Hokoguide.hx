package charleywong.entities;

class Hokoguide implements Entity {
    public final id = "hokoguide";
    public final name = [
        en => "Hokoguide",
        zh => "香港街"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://hokoguide.com"
        },
        {
            url: "https://www.facebook.com/hokoguide/",
            meta: [
                "id" => "112352143518895",
                "about" => "為香港小店而設嘅電子劵平台",
                "categories" => [
                    "Local service"
                ],
                "email" => "info@hokoguide.com"
            ]
        },
        {
            url: "https://www.instagram.com/hokoguide/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hokoguide/photos/a.128979635189479/154469139307195/"
        },
        {
            url: "https://www.facebook.com/hokoguide/photos/a.128979631856146/149652746455501/"
        }
    ];
}

