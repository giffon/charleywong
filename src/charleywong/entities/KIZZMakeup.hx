package charleywong.entities;

class KIZZMakeup implements Entity {
    public final id = "kizzmakeup";
    public final name = [
        en => "KIZZ Makeup"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://kizzmakeup.wix.com/portfolio"
        },
        {
            url: "https://www.facebook.com/kizzmakeup/",
            meta: [
                "id" => "377218225744484",
                "about" => "KIZZ Makeup提供各類型化妝服務，包括：新娘／姐妹化妝、廣告雜誌攝影、舞台表演或私人派對。有興趣／預約試妝服務請電郵至 kizzmakeup@gmail.com / 致電 9028-7217 查詢。",
                "categories" => [
                    "Makeup artist",
                    "Health/beauty",
                    "Wedding planning service"
                ],
                "addr" => "503， Kin Sang Building, 147 Wai Yip Street, Ngau Tau Kok, Kowloon 九龍牛頭角偉業街147號建生大廈5/F 503室",
                "area" => "Hong Kong",
                "email" => "kizzmakeup@gmail.com",
                "tel" => "90287217"
            ]
        },
        {
            url: "https://www.instagram.com/kizzmakeup/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kizzmakeup/photos/a.528656043934034/1735309469935346/"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding,
    ];
}

