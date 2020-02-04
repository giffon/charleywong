package charleywong.entities;

class RickyWongWaiKay implements Entity {
    public final id = "RickyWongWaiKay";
    public final name = [
        zh => "王維基"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.hktvmall.com"
        },
        {
            url: "https://www.facebook.com/RickyWongWaiKay/",
            meta: [
                "id" => "652568044763606",
                "about" => "心有多大，舞台有多大",
                "categories" => [
                    "Public figure"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/RickyWongWaiKay/videos/1207223175964754/"
        },
        {
            url: "https://www.facebook.com/RickyWongWaiKay/posts/821906144496461"
        },
        {
            url: "https://hk.entertainment.appledaily.com/entertainment/20191112/3PXQWOLE5OQ4T7VUESBN5T3RL4/"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

