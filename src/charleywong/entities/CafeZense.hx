package charleywong.entities;

class CafeZense implements Entity {
    public final id = "cafezense";
    public final name = [
        en => "Cafe Zense"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/cafezense/",
            meta: [
                "id" => "151000278286398",
                "about" => "An innovative and unique combination of ingredients that aims to tempt, enthrall, captivate and embrace the senses.",
                "categories" => [
                    "Coffee shop",
                    "Restaurant"
                ],
                "addr" => "4/F, Yeung Iu Chi Commercial Building, 460-462 Jaffe Road, Causeway Bay",
                "area" => "Hong Kong",
                "email" => "cafezense@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cafezense/photos/a.379247022128388/2628003667252701/"
        },
        {
            url: "https://www.facebook.com/cafezense/photos/a.379247022128388/2593945957325139/"
        },
        {
            url: "https://www.facebook.com/cafezense/photos/a.379247022128388/2550641371655598/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

