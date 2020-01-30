package charleywong.entities;

class RCOutfitters implements Entity {
    public final id = "RCOutfitters";
    public final name = [
        en => "RC Outfitters"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://rcoutfitters.net"
        },
        {
            url: "https://www.facebook.com/RCOutfitters/",
            meta: [
                "id" => "141538405052",
                "about" =>
                "一站式全面戶外用品零售 旅遊 / 遠足 / 露營 / 攀岩 / 獨木舟 / 滑雪 / 探險 A one-stop shop for all outdoor equipments -travel; trekking; camping; climbing; kayaking; skiing; adventure racing; outdoor equipments.",
                "categories" => [
                    "Outdoor equipment shop",
                    "Outdoor and sporting goods company",
                    "Sport & recreation"
                ],
                "email" => "admin@alink.com.hk",
                "tel" => "23900980"
            ]
        },
        {
            url: "https://www.instagram.com/rcoutfitters/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/RCOutfitters/posts/10157533896840053"
        },
        {
            url: "https://www.facebook.com/RCOutfitters/posts/10157271224550053"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

