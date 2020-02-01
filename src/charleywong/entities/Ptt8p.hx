package charleywong.entities;

class Ptt8p implements Entity {
    public final id = "ptt8p";
    public final name = [
        zh => "8p數位線上沖印"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.8p.com.tw"
        },
        {
            url: "https://www.facebook.com/ptt8p/",
            meta: [
                "id" => "193851224073323",
                "about" => "想洗便宜品質又好的照片來找灰哥就對了",
                "categories" => [
                    "Camera/photo"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ptt8p/posts/1646957562096008"
        }
    ];
    public final tags:Array<Tag> = [
        photography,
        shop
    ];
}

