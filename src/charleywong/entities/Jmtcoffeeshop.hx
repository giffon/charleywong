package charleywong.entities;

class Jmtcoffeeshop implements Entity {
    public final id = "JMTCoffeeShop";
    public final name = [
        en => "Jmt coffee shop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/JMTCoffeeShop/",
            meta: [
                "id" => "105322984173305",
                "categories" => [
                    "Coffee shop",
                    "Restaurant"
                ],
                "addr" => "薄扶林道19號",
                "area" => "Sai Ying Pun",
                "email" => "jmtcoffeeshop@gmail.com",
                "tel" => "91835627"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/JMTCoffeeShop/posts/133370521368551"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

