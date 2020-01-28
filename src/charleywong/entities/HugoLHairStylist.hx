package charleywong.entities;

class HugoLHairStylist implements Entity {
    public final id = "hugolhair";
    public final name = [
        en => "Hugo L Hair Stylist"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hugolhair/",
            meta: [
                "id" => "2509805682585288",
                "categories" => [
                    "Beauty, cosmetic & personal care"
                ],
                "addr" => "尖沙咀金巴利道18號地庫",
                "area" => "Kowloon, Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hugolhair/photos/a.2511003072465549/3138250113074172/"
        }
    ];
}

