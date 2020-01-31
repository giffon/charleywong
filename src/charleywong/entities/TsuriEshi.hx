package charleywong.entities;

class TsuriEshi implements Entity {
    public final id = "TsuriEshi";
    public final name = [
        zh => "漁絵師"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.tsurieshi.store"
        },
        {
            url: "https://www.facebook.com/TsuriEshi/",
            meta: [
                "id" => "119601399431950",
                "about" => "漁繪師致力制作高品質的釣魚商品, 帶給釣魚發燒友們更高層次的美感。",
                "categories" => [
                    "Fishing shop"
                ],
                "email" => "guma@glvckentertainment.com",
                "tel" => "94676637"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/TsuriEshi/posts/155927979132625"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

