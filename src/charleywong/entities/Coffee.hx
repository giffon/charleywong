package charleywong.entities;

class Coffee implements Entity {
    public final id = "coffeeand.hk";
    public final name = [
        en => "Coffee &"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/coffeeand.hk/",
            meta: [
                "about" => "The first takeaway coffee bar and self-serve laundry in Hong Kong.",
                "categories" => [
                    "Coffee shop",
                    "Local service",
                    "Restaurant"
                ],
                "addr" => "Shop F, 1 Queen Street, Sheung Wan",
                "area" => "Hong Kong",
                "email" => "coffeeand.hk@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/coffeeand.hk/photos/a.225644884740812/392851488020150/"
        },
        {
            url: "https://www.facebook.com/coffeeand.hk/photos/a.225644884740812/450040665634565/"
        }
    ];
}

