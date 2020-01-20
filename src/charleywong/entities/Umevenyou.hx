package charleywong.entities;

class Umevenyou implements Entity {
    public final id = "um.even.you";
    public final name = [
        en => "Um.even.you"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/um.even.you/",
            meta: [
                "about" => "我們用圖像溫柔地跟你說故事",
                "categories" => [
                    "Clothing (brand)",
                    "Costume shop"
                ],
                "email" => "afrajet@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/um.even.you/photos/a.175480852855859/652721608465112/"
        }
    ];
}

