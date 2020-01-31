package charleywong.entities;

class ULURUHK implements Entity {
    public final id = "ULURU.HK";
    public final name = [
        en => "ULURU HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ULURU.HK/",
            meta: [
                "id" => "238357570425521",
                "about" => "香港灣仔春園街1-11號春暉大廈1樓\n1/F, Chun Fai Building, No. 1- 11, Spring Garden Lane, Wan Chai",
                "categories" => [
                    "Theme restaurant",
                    "Coffee shop"
                ],
                "addr" => "春園街11號春暉大廈1樓",
                "area" => "Hong Kong",
                "tel" => "23666448"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ULURU.HK/photos/a.238359903758621/429498101311466/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

