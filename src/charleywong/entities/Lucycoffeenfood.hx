package charleywong.entities;

class Lucycoffeenfood implements Entity {
    public final id = "lucycoffeenfoodhk";
    public final name = [
        en => "Lucycoffeenfood"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/lucycoffeenfoodhk/",
            meta: [
                "about" => "We love coffee！\nWe love food！\nWe love to share！",
                "categories" => [
                    "Breakfast & brunch restaurant",
                    "Coffee shop"
                ],
                "addr" => "Shop C1, Merlin Centre 55 Po On road",
                "area" => "Cheung Sha Wan, Hong Kong",
                "email" => "lucycoffeenfood@gmail.com",
                "tel" => "55088318"
            ]
        },
        {
            url: "https://www.instagram.com/lucycoffeenfood/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lucycoffeenfoodhk/photos/a.1667526263484961/2491903431047236/"
        },
        {
            url: "https://www.facebook.com/lucycoffeenfoodhk/photos/a.1667526263484961/2461561117414801/"
        }
    ];
}

