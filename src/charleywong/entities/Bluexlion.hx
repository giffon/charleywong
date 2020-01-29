package charleywong.entities;

class Bluexlion implements Entity {
    public final id = "bluexlion";
    public final name = [
        zh => "藍獅",
        en => "BluexLion"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://bluexlion.com"
        },
        {
            url: "https://www.facebook.com/bluexlion/",
            meta: [
                "id" => "302960440121223",
                "about" => "由摩一期開始上車到依加 希望能夠喺度分享小弟對車路士既個人分析 同各位網友交流波經",
                "categories" => [
                    "Sport team"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bluexlion/posts/827445114339417"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

