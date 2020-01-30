package charleywong.entities;

class Rosaluna implements Entity {
    public final id = "lunarosee.lab";
    public final name = [
        en => "Rosaluna"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/lunarosee.lab/"
        },
        {
            url: "https://www.facebook.com/lunarosee.lab/",
            meta: [
                "id" => "1807760866217713",
                "about" => "LUNAROSE 成立於2017 年，提供各種西方草藥魔法及能量產品 占卜及療癒服務，致力融合興趣所學幫助現代人達致身心靈健康之路。",
                "categories" => [
                    "Product/service"
                ],
                "email" => "luna394343@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lunarosee.lab/posts/2613869958940129"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

