package charleywong.entities;

class REACTIONCoffeeRoasters implements Entity {
    public final id = "reactioncoffeeroasters";
    public final name = [
        en => "REACTION Coffee Roasters"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/reactioncoffeeroasters/",
            meta: [
                "about" =>
                "Hong Kong freshly roasted coffee\nSpecialty coffee, hand drip and cold brew\nAll day breakfast, sandwiches, salad and pasteries\nA Place to chill out",
                "categories" => [
                    "Coffee shop"
                ],
                "addr" => "Shop 67 B & C, G/F, 67 Sing Woo Road, Happy Valley",
                "area" => "Hong Kong",
                "tel" => "26747388",
                "id" => "1499108513654527"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/reactioncoffeeroasters/photos/a.1593356100896434/2368236120075091/"
        }
    ];
}

