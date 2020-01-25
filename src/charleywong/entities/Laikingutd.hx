package charleywong.entities;

class Laikingutd implements Entity {
    public final id = "laikingutd";
    public final name = [
        zh => "荔景聯",
        en => "Lai King United"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/laikingutd/",
            meta: [
                "id" => "610525489102643",
                "about" => "FIRE",
                "categories" => [
                    "Amateur sports team"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/laikingutd/posts/1371496896338828"
        }
    ];
}

