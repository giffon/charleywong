package charleywong.entities;

class LittleCoveEspresso implements Entity {
    public final id = "littlecoveespresso";
    public final name = [
        en => "Little Cove Espresso"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/littlecoveespresso/",
            meta: [
                "about" =>
                "A laneway cafe with a passion for specialty coffee & Mediterranean inspired food. Taking care of the good people of Sai Kung, one cup at a time.",
                "categories" => [
                    "Cafe"
                ],
                "addr" => "Sai Kung Town Villa Block A, Siu Yat Building Block A, Shop 1+2, G/F, Sai Kung Hoi Pong Square, Sai Kung",
                "area" => "Hong Kong",
                "email" => "info@littlecoveespresso.com",
                "tel" => "95728560",
                "id" => "424053707795001"
            ]
        },
        {
            url: "https://www.instagram.com/littlecove.espresso/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/littlecoveespresso/posts/1169260336607664"
        },
        {
            url: "https://www.facebook.com/littlecoveespresso/photos/a.425205071013198/1132907383576293/"
        },
        {
            url: "https://www.facebook.com/littlecoveespresso/posts/1132412886959076"
        }
    ];
}

