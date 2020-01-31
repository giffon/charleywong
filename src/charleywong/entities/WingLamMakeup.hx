package charleywong.entities;

class WingLamMakeup implements Entity {
    public final id = "WingLamMakeup";
    public final name = [
        en => "WingLam Makeup"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://winglammake-up.blogspot.com"
        },
        {
            url: "https://www.facebook.com/WingLamMakeup/",
            meta: [
                "id" => "134614519920051",
                "about" => "歡迎查詢有關化妝資訊\nE-mail:info.winglammakeup@gmail.com\n或Facebook inbox",
                "categories" => [
                    "Product/service",
                    "Beauty, cosmetic & personal care",
                    "Cosmetics shop"
                ],
                "email" => "info.winglammakeup@gmail.com",
                "tel" => "60874451"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/WingLamMakeup/posts/2542086819172797"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding
    ];
}

