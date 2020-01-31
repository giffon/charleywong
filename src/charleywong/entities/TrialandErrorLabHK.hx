package charleywong.entities;

class TrialandErrorLabHK implements Entity {
    public final id = "trialanderrorHK";
    public final name = [
        en => "Trial and Error Lab HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://trialanderror.hk"
        },
        {
            url: "https://www.facebook.com/trialanderrorHK/",
            meta: [
                "id" => "277145059315745",
                "about" => "嘗試，直至我們找到出路。\n\n鍥而不捨，展開想像，彼此交流，直至我們為自己、為城市、為世界，找到一條新的出路。\n\n試，錯，變，再試——這就是生活的節奏。",
                "categories" => [
                    "Cause"
                ],
                "addr" => "1/F, Breakthrough Centre, 191 - 197 Woo Sung Street, Kowloon",
                "area" => "Hong Kong",
                "email" => "trial_and_error@breakthrough.org.hk",
                "tel" => "26320742"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/trialanderrorHK/photos/a.280046272358957/1011156155914628/"
        },
        {
            url: "https://www.facebook.com/trialanderrorHK/photos/a.286017608428490/952331611797083/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

