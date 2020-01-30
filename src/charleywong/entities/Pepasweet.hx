package charleywong.entities;

class Pepasweet implements Entity {
    public final id = "pepasweet";
    public final name = [
        zh => "紙漫糖"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://pepasweet.taobao.com"
        },
        {
            url: "https://www.facebook.com/pepasweet/",
            meta: [
                "id" => "118691898283454",
                "about" => "香港同人紙模型為主的組織\n製作出有趣/萌的紙模型",
                "categories" => [
                    "Organisation"
                ],
                "email" => "pepatiger@yahoo.com.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/pepasweet/posts/1533762620109701"
        },
        {
            url: "https://www.facebook.com/pepasweet/posts/1525165600969403"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

