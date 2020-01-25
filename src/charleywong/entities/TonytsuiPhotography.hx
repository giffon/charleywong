package charleywong.entities;

class TonytsuiPhotography implements Entity {
    public final id = "Tonytsuiphoto";
    public final name = [
        en => "Tonytsui Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Tonytsuiphoto/",
            meta: [
                "id" => "406997177904",
                "about" => "Email: info@tonytsui.com\nWhatsApp: 9754 0504\nWechat : tonytsui003",
                "categories" => [
                    "Photographer"
                ],
                "addr" => "九龍觀塘開源道54豐利中心1612",
                "area" => "Hong Kong",
                "email" => "info@tonytsui.com",
                "tel" => "97540504"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Tonytsuiphoto/posts/10157824229732905"
        }
    ];
}

