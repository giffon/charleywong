package charleywong.entities;

class OpendoorCafeCourtyard implements Entity {
    public final id = "opendoorcafehk";
    public final name = [
        en => "Opendoor Cafe + Courtyard"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/opendoorcafehk/",
            meta: [
                "about" =>
                "Opendoor Cafe + Courtyard - Your neighbourhood cafe offering favourites + speciality drinks such as almond milk coffees, kefir smoothies and craft beers.",
                "categories" => [
                    "Breakfast & brunch restaurant",
                    "Cafe",
                    "Vegetarian/Vegan Restaurant"
                ],
                "addr" => "G/F 120 Connaught Road West, Sai Ying Pun",
                "area" => "Hong Kong",
                "email" => "hello@opendoorcafe.hk",
                "tel" => "34603880",
                "id" => "132061946986975"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/opendoorcafehk/photos/a.158479264345243/1100599486799878/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

