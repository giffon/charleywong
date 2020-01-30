package charleywong.entities;

class MomodeFilm implements Entity {
    public final id = "momodefilm";
    public final name = [
        en => "Momo de Film"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.momodefilm.com"
        },
        {
            url: "https://www.facebook.com/momodefilm/",
            meta: [
                "id" => "682434348489022",
                "about" =>
                "Momo de Film provide photography, makeup service,for client. We capture the memorable moment for you.\n\nMo Kot - the main photographer, the style in natural and real!\n\nSur Chow- the main makeup artist, love to freeze you in elegant style",
                "categories" => [
                    "Photographer",
                    "Wedding planning service",
                    "Makeup artist"
                ],
                "addr" => "2/F, 110 Jervois Street, Sheung Wan",
                "area" => "Hong Kong",
                "email" => "momodefilm@hotmail.com",
                "tel" => "56214536"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/momodefilm/posts/2457614200971019"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        makeup,
        wedding
    ];
}

