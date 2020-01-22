package charleywong.entities;

class KayWong implements Entity {
    public final id = "kaywong.art";
    public final name = [
        en => "Kay Wong"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kaywong.art/",
            meta: [
                "about" => "Hongkonger.\nThe art is long, life is short.",
                "categories" => [
                    "Artist"
                ],
                "email" => "kaywong@mail.com",
                "id" => "309427366424418"
            ]
        },
        {
            url: "https://www.instagram.com/kaywong.art/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kaywong.art/photos/a.309560363077785/462286181138535/"
        },
        {
            url: "https://www.facebook.com/kaywong.art/posts/434312290602591"
        }
    ];
}

