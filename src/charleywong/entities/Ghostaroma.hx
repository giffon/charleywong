package charleywong.entities;

class Ghostaroma implements Entity {
    public final id = "ghostaroma";
    public final name = [
        zh => "鬼皂坊"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ghostaroma/",
            meta: [
                "id" => "701155059942564",
                "about" => "DIY, 手工皂, 天然, 冷製, 精油, 護膚品, 原材料, 禮物, 結婚, 嬰兒, 滿月, 母乳皂",
                "categories" => [
                    "Beauty, cosmetic & personal care"
                ],
                "email" => "ghostaroma@gmail.com",
                "tel" => "93299227"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ghostaroma/photos/a.751588054899264/2783921651665884/"
        },
        {
            url: "https://www.facebook.com/ghostaroma/photos/a.751588054899264/2393202140737839/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

