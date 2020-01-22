package charleywong.entities;

class LeisureinYuenLong implements Entity {
    public final id = "leisureinyuenlong";
    public final name = [
        en => "Leisure in Yuen Long"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/leisureinyuenlong/",
            meta: [
                "about" => "我們永遠站在雞蛋這一邊\n\nHope everyone having leisure time with lovers, friends, families, and GOD",
                "categories" => [
                    "Coffee shop",
                    "Breakfast & brunch restaurant"
                ],
                "addr" => "元朗鳯攸北街9A昌威大廈28號地鋪",
                "area" => "Hong Kong",
                "email" => "leisureinyuenlong@yahoo.com.hk",
                "tel" => "35687741",
                "id" => "459320824196423"
            ]
        },
        {
            url: "https://www.instagram.com/leisureinyuenlong/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/leisureinyuenlong/photos/a.459354584193047/2415998938528592/"
        },
        {
            url: "https://www.facebook.com/leisureinyuenlong/photos/a.529497643845407/2398581216937031/"
        },
        {
            url: "https://www.facebook.com/leisureinyuenlong/photos/a.459354584193047/2342097185918768/"
        }
    ];
}

