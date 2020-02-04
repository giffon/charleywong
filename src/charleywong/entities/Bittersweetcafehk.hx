package charleywong.entities;

class Bittersweetcafehk implements Entity {
    public final id = "bittersweetcafehk";
    public final name = [
        en => "Bittersweet",
        zh => "咖啡館"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/bittersweetcafehk/",
            meta: [
                "id" => "273521932824761",
                "about" => "All Day Breakfast\nCoffee",
                "categories" => [
                    "Coffee shop",
                    "Restaurant"
                ],
                "addr" => "粉嶺聯和墟和豐街和豐閣4號地下（欽記隔離）",
                "area" => "Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bittersweetcafehk/photos/a.281611098682511/1325545574289053/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

