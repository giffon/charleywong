package charleywong.entities;

class Onescafehk implements Entity {
    public final id = "Onescafehk";
    public final name = [
        en => "One\'s Cafe",
        zh => "1仔冰室"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Onescafehk/",
            meta: [
                "categories" => [
                    "Breakfast & brunch restaurant",
                    "Hong Kong restaurant",
                    "Coffee shop"
                ],
                "addr" => "香港九龍紅磡必嘉街92-112號 紅磡灣中心地下9C鋪",
                "area" => "Kowloon, Hong Kong",
                "email" => "onescafe.cgl@gmail.com",
                "tel" => "31188111",
                "id" => "356781328220869"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Onescafehk/photos/a.386662011899467/562429360989397/"
        }
    ];
    public final tags:Array<Tag> = [];
}

