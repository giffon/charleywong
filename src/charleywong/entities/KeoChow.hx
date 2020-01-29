package charleywong.entities;

class KeoChow implements Entity {
    public final id = "KeoChow";
    public final name = [
        en => "Keo Chow"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.keochow.com"
        },
        {
            url: "https://www.facebook.com/KeoChow/",
            meta: [
                "id" => "253612668071915",
                "about" => "www.keochow.com\nwww.youtube.com/c/keochow",
                "categories" => [
                    "Artist"
                ],
                "email" => "keochow@hotmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/KeoChow/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/KeoChow/videos/179296626777263/"
        },
        {
            url: "https://www.facebook.com/KeoChow/posts/2258822367550925"
        },
        {
            url: "https://www.facebook.com/KeoChow/photos/a.340667359366445/2258821027551059/"
        }
    ];
    public final tags:Array<Tag> = [];
}

