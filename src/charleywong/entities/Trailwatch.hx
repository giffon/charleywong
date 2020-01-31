package charleywong.entities;

class Trailwatch implements Entity {
    public final id = "trailwatch";
    public final name = [
        zh => "徑‧香港",
        en => "Trailwatch"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/trailwatch/",
            meta: [
                "about" => "建立資訊網絡平台, 讓公眾參與和監察郊野的保育 | Encouraging the public to monitor and conserve Hong Kong\'s country parks",
                "categories" => [
                    "App Page",
                    "Nature reserve"
                ],
                "email" => "info@trailwatch.hk",
                "id" => "645959668776951"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/trailwatch/posts/2655450511161180"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

