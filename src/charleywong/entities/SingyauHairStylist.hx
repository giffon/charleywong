package charleywong.entities;

class SingyauHairStylist implements Entity {
    public final id = "singyauhair";
    public final name = [
        en => "Sing yau Hair Stylist"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/singyauhair/",
            meta: [
                "id" => "1213086585479996",
                "about" => "髪型屋",
                "categories" => [
                    "Hair salon",
                    "Personal blog"
                ],
                "addr" => "尖沙咀金巴利道18號地庫",
                "area" => "Hong Kong",
                "tel" => "91296086"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/singyauhair/posts/2458544887600820"
        },
        {
            url: "https://www.facebook.com/singyauhair/photos/a.1214795185309136/2454614364660539/"
        },
        {
            url: "https://www.facebook.com/singyauhair/posts/2395362717252371"
        },
        {
            url: "https://www.facebook.com/singyauhair/posts/2409530172502292"
        }
    ];
}

