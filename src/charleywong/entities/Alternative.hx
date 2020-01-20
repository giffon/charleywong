package charleywong.entities;

class Alternative implements Entity {
    public final id = "AlternativeCoffeeHK";
    public final name = [
        en => "Alternative"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/AlternativeCoffeeHK/",
            meta: [
                "categories" => [
                    "Coffee shop",
                    "Restaurant"
                ],
                "addr" => "G/F, Breakthrough Centre, 191 Woosung Street, Jordan",
                "area" => "Hong Kong",
                "email" => "alternativehkcafe@gmail.com",
                "tel" => "65137994"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/AlternativeCoffeeHK/photos/a.359044704522044/799650897128087/"
        },
        {
            url: "https://www.facebook.com/AlternativeCoffeeHK/photos/a.359044704522044/724644901295354/"
        }
    ];
}

