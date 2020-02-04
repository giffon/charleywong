package charleywong.entities;

class Prawnnoodleshop implements Entity {
    public final id = "prawnnoodleshop";
    public final name = [
        en => "Prawn noodle shop",
        zh => "檳城蝦麵店"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/prawnnoodleshop/",
            meta: [
                "id" => "138183496248898",
                "about" => "Authentic Malaysian Prawn Noodles Experience\n正宗馬來西亞蝦麵體驗",
                "categories" => [
                    "Malaysian restaurant"
                ],
                "addr" => "灣仔蘭杜街2號麗都大廈4號地舖",
                "area" => "Hong Kong",
                "tel" => "25200268"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/prawnnoodleshop/photos/a.1282366005163969/2708473022553253/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

