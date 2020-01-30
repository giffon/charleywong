package charleywong.entities;

class Mmushroommm implements Entity {
    public final id = "Mmushroom.hk";
    public final name = [
        en => "Mmushroommm"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Mmushroom.hk/",
            meta: [
                "categories" => [
                    "Local business"
                ],
                "addr" => "旺角花園街2-16號好景商業中心8樓801B1室",
                "area" => "Hong Kong",
                "tel" => "60434150",
                "id" => "1365290516897308"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Mmushroom.hk/posts/2580435362049478"
        }
    ];
    public final tags:Array<Tag> = [
        accessories,
        clothing
    ];
}

