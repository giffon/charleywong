package charleywong.entities;

class DTmakeup implements Entity {
    public final id = "dtstyle.makeup";
    public final name = [
        en => "DT makeup"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/dtstyle.makeup/",
            meta: [
                "id" => "446861205508945",
                "about" => "提供新娘 / 晚宴 / 廣告 / 攝影 / 電影 / 舞台專業化妝髮型造型服務\n\n半永久飄眉 / 霧眉 / 眼線 設計服務...\n\n\n\nSee more",
                "categories" => [
                    "Product/service",
                    "Makeup artist",
                    "Image consultant"
                ],
                "email" => "dannatong.mua@gmail.com",
                "tel" => "65005788"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/dtstyle.makeup/posts/1119975498197509"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding
    ];
}

