package charleywong.entities;

class HelloLovebyHelenLo implements Entity {
    public final id = "hellolovehelen";
    public final name = [
        en => "HelloLove by Helen Lo"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hellolovehelen/",
            meta: [
                "id" => "1121248947941052",
                "about" => "Provide professional makeup & hairstyling service.\n預約婚嫁試妝請註明大日子喔~",
                "categories" => [
                    "Makeup artist",
                    "Wedding planning service"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/hellolovehelen/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hellolovehelen/posts/2620320574700541"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding
    ];
}

