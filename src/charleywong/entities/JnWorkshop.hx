package charleywong.entities;

class JnWorkshop implements Entity {
    public final id = "JnWorkshop";
    public final name = [
        en => "Jn Workshop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.jnworkshop.com"
        },
        {
            url: "https://www.facebook.com/JnWorkshop/",
            meta: [
                "id" => "601768049940663",
                "about" => "香港尖沙咀加連威老道18號僑業大廈4樓B室(3482 3458)",
                "categories" => [
                    "Health/beauty",
                    "Cosmetics shop",
                    "Hair removal service"
                ],
                "email" => "joyjoyng130@gmail.com",
                "tel" => "34823458"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/JnWorkshop/posts/2593613540756094"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        shop
    ];
}

