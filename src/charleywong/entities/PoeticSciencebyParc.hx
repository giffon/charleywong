package charleywong.entities;

class PoeticSciencebyParc implements Entity {
    public final id = "poeticsciencebyparc";
    public final name = [
        en => "Poetic Science by Parc"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/poeticsciencebyparc/",
            meta: [
                "about" => "[ Coffee & Plants ] Poetic Science is a coffee label by Parc Antique & Lifestyle . We love coffee , we love green .",
                "categories" => [
                    "Shopping & retail",
                    "Coffee shop"
                ],
                "addr" => "Unit B2, 10/FL, 60 Hung To Road, Kwun Tong",
                "area" => "Hong Kong",
                "email" => "hello@par-c.com",
                "tel" => "55440534"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/poeticsciencebyparc/photos/a.1834924653391515/2411241415759833/"
        },
        {
            url: "https://www.facebook.com/poeticsciencebyparc/photos/a.1834924653391515/2307541642796478/"
        }
    ];
}

