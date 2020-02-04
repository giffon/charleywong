package charleywong.entities;

class OnTimeCoffeeKitchen implements Entity {
    public final id = "722923398121654";
    public final name = [
        en => "On Time Coffee & Kitchen"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/722923398121654/",
            meta: [
                "id" => "722923398121654",
                "categories" => [
                    "Coffee shop",
                    "Breakfast & brunch restaurant"
                ],
                "addr" => "93 Jervois Street",
                "area" => "Hong Kong",
                "tel" => "98505495"
            ]
        },
        {
            url: "https://www.instagram.com/ontime.coffee/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/722923398121654/photos/a.728825267531467/822982218115771/"
        },
        {
            url: "https://www.facebook.com/722923398121654/photos/a.728825267531467/812076235873036/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

