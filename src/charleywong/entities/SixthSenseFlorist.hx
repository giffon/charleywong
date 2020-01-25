package charleywong.entities;

class SixthSenseFlorist implements Entity {
    public final id = "sixthsenseflorist";
    public final name = [
        en => "Sixth Sense Florist"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/sixthsenseflorist/",
            meta: [
                "id" => "425416320971470",
                "about" => "Email : 6thsenseflorist@gmail.com",
                "categories" => [
                    "Florist",
                    "Gift shop",
                    "Party supply and rental shop"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sixthsenseflorist/posts/1316504965195930"
        }
    ];
}

