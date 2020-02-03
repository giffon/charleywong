package charleywong.entities;

class TheKorner implements Entity {
    public final id = "happykorners";
    public final name = [
        en => "The Korner"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.thekornershoes.com"
        },
        {
            url: "https://www.facebook.com/happykorners/",
            meta: [
                "id" => "379608685556223",
                "about" =>
                "The Korner 是香港本地鞋履品牌，創立於2015年，品牌主張 “make shoes in your way” 與 “make goods affordable” 的理念，希望陪大家走過不同的路。\n-\nInstagram: Thekorner_hk\n-\nWe ship worldwide.",
                "categories" => [
                    "Shoe shop"
                ],
                "email" => "kornerformen@gmail.com",
                "tel" => "96265010"
            ]
        },
        {
            url: "https://www.instagram.com/thekorner_hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/happykorners/posts/1180415225475561"
        },
        {
            url: "https://www.facebook.com/happykorners/photos/a.485043865012704/1102374479946303/"
        }
    ];
    public final tags:Array<Tag> = [
        footwear
    ];
}

