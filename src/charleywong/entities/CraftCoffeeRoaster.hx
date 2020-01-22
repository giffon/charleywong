package charleywong.entities;

class CraftCoffeeRoaster implements Entity {
    public final id = "craftcoffeehk";
    public final name = [
        en => "Craft Coffee Roaster"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/craftcoffeehk/",
            meta: [
                "about" => "The official Facebook page of Craft Coffee Roaster - Hong Kong",
                "categories" => [
                    "Coffee shop",
                    "Restaurant"
                ],
                "addr" => "29 Tai Kok Tsui Road,",
                "area" => "Hong Kong",
                "email" => "craftcoffeehk@gmail.com",
                "tel" => "51096770",
                "id" => "1378859032342766"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/craftcoffeehk/posts/2579125702316087"
        },
        {
            url: "https://www.facebook.com/craftcoffeehk/photos/a.1470107473217921/2576511602577497/"
        }
    ];
}

