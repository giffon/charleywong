package charleywong.entities;

class GabbieMakeup implements Entity {
    public final id = "gabbiemakeup";
    public final name = [
        en => "Gabbie Makeup"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.gabbiemakeup.com"
        },
        {
            url: "https://www.facebook.com/gabbiemakeup/",
            meta: [
                "id" => "91583195086",
                "about" =>
                "Makeup services for weddings, engagement photo shoots, fashion shows, fashion photo shoots, magazine photo shoots, celebrities, events, parties & more.",
                "categories" => [
                    "Makeup artist"
                ],
                "email" => "gabbiemakeup@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/gabbiemakeup/posts/10158005013410087"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding
    ];
}

