package charleywong.entities;

class Whitepaperhk implements Entity {
    public final id = "whitepaper.hk";
    public final name = [
        zh => "白卷出版社"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.whitepaper.com.hk"
        },
        {
            url: "https://www.facebook.com/whitepaper.hk/",
            meta: [
                "id" => "513560152049462",
                "about" => "白卷出版社專門出版小說、散文、圖文集等流行讀物。",
                "categories" => [
                    "Media/news company"
                ],
                "addr" => "葵涌大圓街11-13號同珍工業大廈B座22樓5室",
                "area" => "Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/whitepaper.hk/photos/a.542519065820237/2826276570777797/"
        },
        {
            url: "https://www.facebook.com/whitepaper.hk/posts/2737059469699508"
        }
    ];
    public final tags:Array<Tag> = [
        book,
        shop
    ];
}

