package charleywong.entities;

class Gigabiteplus implements Entity {
    public final id = "gigabiteplus";
    public final name = [
        en => "Keith Sir",
        zh => "劉子瑋"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.keithsir.com"
        },
        {
            url: "https://www.facebook.com/gigabiteplus/",
            meta: [
                "id" => "705260466272012",
                "about" => "我未必係彈得最好😎.......但一定會係教得最好!!😎",
                "categories" => [
                    "Tutor/teacher",
                    "Musician/band"
                ],
                "tel" => "62111153"
            ]
        },
        {
            url: "https://www.instagram.com/keithsir/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/gigabiteplus/posts/1714351908696191"
        }
    ];
    public final tags:Array<Tag> = [
        music,
        shop
    ];
}

