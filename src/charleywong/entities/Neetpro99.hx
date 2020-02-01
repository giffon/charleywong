package charleywong.entities;

class Neetpro99 implements Entity {
    public final id = "neetpro99";
    public final name = [
        en => "Neetpro99"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://mosaiclegion.bigcartel.com"
        },
        {
            url: "https://www.facebook.com/neetpro99/",
            meta: [
                "id" => "409197342605481",
                "about" => "▶二九\n▶繪圖・偶然攝影\n▶不定期更新\n▶工商: Mosaic Legion\n▶可接委託繪圖",
                "categories" => [
                    "Art",
                    "Arts and crafts shop",
                    "Visual arts"
                ],
                "email" => "mosaiclegionstore@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/neetpro99/posts/1150382675153607"
        },
        {
            url: "https://www.facebook.com/neetpro99/posts/1145496652308876"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

