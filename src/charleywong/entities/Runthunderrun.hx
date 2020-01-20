package charleywong.entities;

class Runthunderrun implements Entity {
    public final id = "runthunderrun";
    public final name = [
        zh => "門小雷",
        en => "Little Thunder"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/runthunderrun/",
            meta: [
                "about" => "Comic Artist. Hong Kong.",
                "categories" => [
                    "Artist"
                ],
                "email" => "info@portamentopeople.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/runthunderrun/photos/a.169266327210/10157236544182211/"
        },
        {
            url: "https://www.facebook.com/runthunderrun/posts/10157504001137211"
        }
    ];
}

