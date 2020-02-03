package charleywong.entities;

class Madgodmother implements Entity {
    public final id = "madgodmother";
    public final name = [
        zh => "美工霉",
        en => "MGM Hong Kong"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/madgodmother/"
        },
        {
            url: "https://www.facebook.com/madgodmother/",
            meta: [
                "id" => "1200587933295882",
                "about" => "霉著做工的一堆美工。\n香港迷妹團友。",
                "categories" => [
                    "Art"
                ],
                "email" => "madgodmother@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/madgodmother/photos/a.1203595369661805/2717970628224264/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

