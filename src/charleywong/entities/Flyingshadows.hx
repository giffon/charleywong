package charleywong.entities;

class Flyingshadows implements Entity {
    public final id = "flyingshadows";
    public final name = [
        zh => "飛 影"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/flyingshadows/",
            meta: [
                "id" => "102458676557543",
                "about" => "與你分享有趣事，一齊關心社會，積極參與社會運動。不在沉默中爆發，就在沉默中滅亡。香港人，瞓醒未？",
                "categories" => [
                    "Artist"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/flyingshadows/posts/1566924686777594"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

