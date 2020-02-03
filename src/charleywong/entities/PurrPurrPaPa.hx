package charleywong.entities;

class PurrPurrPaPa implements Entity {
    public final id = "purrpurrpapa";
    public final name = [
        en => "Purr Purr PaPa"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.purrpurrpapa.com"
        },
        {
            url: "https://www.facebook.com/purrpurrpapa/",
            meta: [
                "id" => "1561139594215797",
                "about" => "Design for Cats Lover",
                "categories" => [
                    "Product/service"
                ],
                "email" => "purrpurrpapa@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/purrpurrpapa/photos/a.1576925472637209/2311304475865968/"
        },
        {
            url: "https://www.facebook.com/purrpurrpapa/photos/a.1576925472637209/2304856733177409/"
        },
        {
            url: "https://www.facebook.com/purrpurrpapa/photos/a.1576925472637209/2298226923840390/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

