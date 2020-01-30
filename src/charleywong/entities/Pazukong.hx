package charleywong.entities;

class Pazukong implements Entity {
    public final id = "pazukong";
    public final name = [
        zh => "薯伯伯",
        en => "Pazu"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/pazukong/",
            meta: [
                "about" => "Pazu薯伯伯，旅遊寫作人。",
                "categories" => [
                    "Writer"
                ],
                "id" => "2007814566118012"
            ]
        },
        {
            url: "https://www.instagram.com/pazu/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/pazukong/posts/2733835833515878"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure,
        media
    ];
}

