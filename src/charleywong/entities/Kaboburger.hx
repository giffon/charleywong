package charleywong.entities;

class Kaboburger implements Entity {
    public final id = "kabo.burger";
    public final name = [
        zh => "嘉寶小食"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://deliveroo.hk/en/menu/hong-kong/kwai-chung/kabo-burger"
        },
        {
            url: "https://www.facebook.com/kabo.burger/",
            meta: [
                "id" => "835724869781816",
                "about" => "嘉寶漢堡",
                "categories" => [
                    "Fast food restaurant",
                    "Food stall"
                ],
                "addr" => "葵涌青山公路葵涌段499號嘉寶大廈地下A-B舖",
                "area" => "Hong Kong",
                "email" => "info@kaboburger.com.hk",
                "tel" => "61258419"
            ]
        },
        {
            url: "https://www.instagram.com/kabo.burger/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kabo.burger/posts/2675736512447300"
        },
        {
            url: "https://www.facebook.com/kabo.burger/videos/453443188841254/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

