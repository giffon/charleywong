package charleywong.entities;

class CemeteryNewspage implements Entity {
    public final id = "Cemetery.News.page";
    public final name = [
        en => "Cemetery News",
        zh => "墳場新聞"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.cemeterynews.org"
        },
        {
            url: "https://www.facebook.com/Cemetery.News.page/",
            meta: [
                "id" => "729586907148929",
                "about" => "獨家陰間第一手消息。",
                "categories" => [
                    "Media/news company",
                    "Media",
                    "Locality"
                ],
                "email" => "cemeterynewshk@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Cemetery.News.page/posts/2761149477325985"
        },
        {
            url: "https://www.facebook.com/Cemetery.News.page/posts/2784395841668015"
        },
        {
            url: "https://www.facebook.com/Cemetery.News.page/photos/a.729615857146034/2786946444746288/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

