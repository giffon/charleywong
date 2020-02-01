package charleywong.entities;

class RFloralArt implements Entity {
    public final id = "floralbyR";
    public final name = [
        en => "R Floral Art"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/floralbyR/",
            meta: [
                "id" => "246969502893128",
                "categories" => [
                    "Florist"
                ],
                "email" => "rfloralart@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/floralbyR/posts/445620403028036"
        }
    ];
    public final tags:Array<Tag> = [
        florist
    ];
}

