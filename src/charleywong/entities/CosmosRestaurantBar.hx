package charleywong.entities;

class CosmosRestaurantBar implements Entity {
    public final id = "CosmosRestaurantandBarHK";
    public final name = [
        en => "Cosmos Restaurant & Bar"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/cosmos_rnb/"
        },
        {
            url: "https://www.facebook.com/CosmosRestaurantandBarHK/",
            meta: [
                "id" => "730912313715550",
                "about" => "Eat. Drink. Relax\n\nSupport Payment Cash, American Express, Visa, Master, Fast Payment System, Alipay",
                "categories" => [
                    "Restaurant",
                    "Bar"
                ],
                "addr" => "G/F., Tung Wui Commercial Building, No.27 Prat Avenue, Tsim Sha Tsui, Kowloon, H.K. (港鐵站A2出口步行4分鐘)",
                "area" => "Tsim Sha Tsui",
                "tel" => "29482828"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CosmosRestaurantandBarHK/posts/1657623314377774"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

