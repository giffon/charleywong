package charleywong.entities;

class UrbanCoffeeRoaster implements Entity {
    public final id = "Urbancoffeeroaster";
    public final name = [
        en => "Urban Coffee Roaster"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Urbancoffeeroaster/",
            meta: [
                "about" => "Life is too short for bad coffee",
                "categories" => [
                    "Coffee shop",
                    "Restaurant",
                    "Sandwich shop"
                ],
                "email" => "info@ucr.hk",
                "tel" => "23633661",
                "id" => "580321868745202"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Urbancoffeeroaster/photos/a.593637637413625/2444970068947030/"
        },
        {
            url: "https://www.facebook.com/Urbancoffeeroaster/photos/a.593637637413625/2260743364036369/"
        },
        {
            url: "https://www.facebook.com/Urbancoffeeroaster/photos/a.593637637413625/2169088959868477/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

