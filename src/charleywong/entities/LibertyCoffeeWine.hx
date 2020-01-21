package charleywong.entities;

class LibertyCoffeeWine implements Entity {
    public final id = "libertycoffeewine";
    public final name = [
        en => "Liberty Coffee & Wine"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/libertycoffeewine/",
            meta: [
                "categories" => [
                    "Coffee shop"
                ],
                "addr" => "G/F, Tsui Yuen Mansion, 33 Waterlood Road, Phase 1, Yau Ma Tei",
                "area" => "Hong Kong",
                "email" => "libertycoffeewine@gmail.com",
                "tel" => "93463698"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/libertycoffeewine/posts/146092906728730"
        },
        {
            url: "https://www.facebook.com/libertycoffeewine/photos/a.116907079647313/152041932800494/"
        }
    ];
}

