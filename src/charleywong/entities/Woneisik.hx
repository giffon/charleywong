package charleywong.entities;

class Woneisik implements Entity {
    public final id = "woneisik";
    public final name = [
        zh => "和你食"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/woneisik/",
            meta: [
                "id" => "107295660761718",
                "about" => "香港人的小食店",
                "categories" => [
                    "Fast food restaurant"
                ],
                "addr" => "長沙灣幸福商場地下G9號鋪",
                "area" => "Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/woneisik/posts/138710960953521"
        },
        {
            url: "https://www.facebook.com/woneisik/photos/a.114151370076147/115448139946470/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

