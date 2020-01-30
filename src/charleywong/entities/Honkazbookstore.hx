package charleywong.entities;

class Honkazbookstore implements Entity {
    public final id = "honkazbookstore";
    public final name = [
        zh => "古本屋",
        en => "Booska"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/honkazbookstore/",
            meta: [
                "about" => "電影、文學、漫畫、音樂、二手書店",
                "categories" => [
                    "Book shop"
                ],
                "addr" => "北角英皇道294號五洲大廈地下E舖 Shop E, G/F, Continental Mansion, 294 King\'s Road, North Point.",
                "area" => "Hong Kong",
                "id" => "272860376814097"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/honkazbookstore/posts/458061784960621"
        }
    ];
    public final tags:Array<Tag> = [
        book,
        shop
    ];
}

