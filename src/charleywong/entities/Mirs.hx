package charleywong.entities;

class Mirs implements Entity {
    public final id = "mirsmakeup";
    public final name = [
        en => "Mirs"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mirsmakeup/",
            meta: [
                "id" => "397210280480845",
                "about" =>
                "| 全方位化妝服務 | 角蛋白美睫 | 日式植睫毛 | 個人化妝班 | 髮型班 |\nWelcome to MIRS Makeup Studio\n服務查詢：mirsmakeup@gmail.com\n地址：觀塘開源道駱駝漆大廈一座5樓D9室\n開放時間：請預約查詢",
                "categories" => [
                    "Health/beauty",
                    "Makeup artist",
                    "Wedding planning service"
                ],
                "addr" => "Rm D9, 5th floor, Ph1, Camelpaint Building",
                "area" => "Kwun Tong",
                "email" => "mirsmakeup@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mirsmakeup/photos/a.436750019860204/1115928325275700/"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding
    ];
}

