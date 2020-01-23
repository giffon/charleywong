package charleywong.entities;

class Everythings implements Entity {
    public final id = "everythings.hk";
    public final name = [
        en => "Everything\'s"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/everythings.hk/"
        },
        {
            url: "https://www.facebook.com/everythings.hk/",
            meta: [
                "id" => "235025277196988",
                "about" => "民族 | 旅遊 | 家品 | 咖啡室 | everything",
                "categories" => [
                    "Shopping & retail",
                    "Coffee shop",
                    "Ethnic Food Shop"
                ],
                "addr" => "1/Floor, Jaffe Building, 520 Jaffe Road, Causeway Bay",
                "area" => "Hong Kong",
                "tel" => "98074109"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/everythings.hk/photos/a.235232000509649/361548804544634/"
        },
        {
            url: "https://www.facebook.com/everythings.hk/photos/a.235232000509649/377110962988418/"
        }
    ];
}

