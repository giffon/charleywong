package charleywong.entities;

class Zoogenic implements Entity {
    public final id = "z.zoogenic";
    public final name = [
        en => "Zoogenic"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/z.zoogenic/",
            meta: [
                "about" => "Spread love to Nature . Animals . Humanity",
                "categories" => [
                    "Gardener",
                    "Home decor",
                    "Designer"
                ],
                "email" => "z.zoogenic@gmail.com",
                "tel" => "61946808"
            ]
        },
        {
            url: "https://www.instagram.com/z.zoogenic/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/z.zoogenic/photos/a.1058860674272800/1458941360931394/"
        }
    ];
}

