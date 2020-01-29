package charleywong.entities;

class EqualOneWeddingEvent implements Entity {
    public final id = "equalonehk";
    public final name = [
        en => "Equal One Wedding & Event"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/equalonehk/",
            meta: [
                "id" => "238293762961398",
                "about" => "Affordable Price, Premium Services and Luxury Experience!",
                "categories" => [
                    "Wedding venue",
                    "Wedding planning service",
                    "Photography & videography"
                ],
                "email" => "info@equalone.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/equalonehk/photos/a.279396992184408/1337902119667218/"
        }
    ];
    public final tags:Array<Tag> = [
        wedding,
        photographer
    ];
}

