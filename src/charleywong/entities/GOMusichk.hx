package charleywong.entities;

class GOMusichk implements Entity {
    public final id = "GOMusichk";
    public final name = [
        en => "GO Music",
        zh => "鬼才音樂"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://no.noneko.me"
        },
        {
            url: "https://www.facebook.com/GOMusichk/",
            meta: [
                "id" => "1803890083181398",
                "about" => "music this now",
                "categories" => [
                    "Musician/band",
                    "Music video"
                ],
                "email" => "komar746344@gmail.com",
                "tel" => "63336960"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/GOMusichk/photos/a.1806181359618937/2529026587334407/"
        }
    ];
    public final tags:Array<Tag> = [];
}

