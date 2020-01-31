package charleywong.entities;

class Wabisabicoffee implements Entity {
    public final id = "wabisabicoffee";
    public final name = [
        zh => "侘寂珈琲",
        en => "WabiSabi Coffee"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/wabisabicoffee/",
            meta: [
                "about" => "Instagram: wabisabi_coffee\n\n片刻寧靜，始於侘寂",
                "categories" => [
                    "Coffee shop",
                    "Asian restaurant"
                ],
                "addr" => "Unit C 4/F., Everest Industrial Centre, 396 Kwun Tong Road",
                "area" => "Kwun Tong",
                "email" => "wabisabicoffee2015@gmail.com",
                "tel" => "25111929",
                "id" => "896367740431998"
            ]
        },
        {
            url: "https://www.instagram.com/wabisabi_coffee/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/wabisabicoffee/photos/a.896861557049283/2592873200781435/"
        },
        {
            url: "https://www.facebook.com/wabisabicoffee/photos/a.898992803502825/2397482256987198/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

