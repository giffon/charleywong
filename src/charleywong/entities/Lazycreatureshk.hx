package charleywong.entities;

class Lazycreatureshk implements Entity {
    public final id = "lazycreatures.hk";
    public final name = [
        zh => "慵懶生物",
        en => "Lazy Creatures"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/lazycreatures.hk/",
            meta: [
                "about" => "Eat. Drink. Do Nothing.",
                "categories" => [
                    "Coffee shop"
                ],
                "addr" => "Shop J, G/F, Katherine Building, 379 Prince Edward Road West",
                "area" => "Hong Kong",
                "email" => "lazycreatures.hk@gmail.com",
                "tel" => "90999288",
                "id" => "1918549828265810"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lazycreatures.hk/posts/2372558422864946"
        },
        {
            url: "https://www.facebook.com/lazycreatures.hk/posts/2373384626115659"
        }
    ];
    public final tags:Array<Tag> = [];
}

