package charleywong.entities;

class VioletLightCenter implements Entity {
    public final id = "violetlightcenter";
    public final name = [
        en => "Violet Light Center"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.violetlightcenter.com"
        },
        {
            url: "https://www.facebook.com/violetlightcenter/",
            meta: [
                "id" => "418651928235295",
                "about" => "Tel 6128 8449 我們提供各式身心靈課程及服務，由淺入深讓你打穩根基。並深入探討，務求能徹底理解最根本的原則邏輯，讓你能在合理情況下，演化出自己的風格。而非只是“師傅話”。",
                "categories" => [
                    "Alternative & holistic health service",
                    "Product/service",
                    "Magician"
                ],
                "addr" => "創業街36號華基中心23樓2310室(L Hotel隔離)",
                "area" => "Kwun Tong",
                "email" => "violetlightcenter@gmail.com",
                "tel" => "61288449"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/violetlightcenter/photos/a.456255934474894/2138541006246370/"
        },
        {
            url: "https://www.facebook.com/violetlightcenter/posts/1968022499964889"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

