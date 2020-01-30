package charleywong.entities;

class Hongkongredcross implements Entity {
    public final id = "hongkongredcross";
    public final name = [
        zh => "香港紅十字會",
        en => "Hong Kong Red Cross"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.redcross.org.hk"
        },
        {
            url: "https://www.facebook.com/hongkongredcross/",
            meta: [
                "id" => "174986200676",
                "about" => "香港紅十字會官方Facebook 專頁\nHong Kong Red Cross Official Facebook Page",
                "categories" => [
                    "Non-profit organisation"
                ],
                "addr" => "西九龍海庭道19號",
                "area" => "Hong Kong",
                "email" => "info@redcross.org.hk",
                "tel" => "28020021"
            ]
        },
        {
            url: "https://www.facebook.com/HKRC.Health/",
            meta: [
                "id" => "601976969836042",
                "about" => "急救訓練(自1977年) - 普及急救，發揮人道精神。\n健康護理訓練(自1996年) - 培育有志者幫助老弱傷困，投身護理專業。",
                "categories" => [
                    "Non-governmental organisation (NGO)",
                    "First Aid Class",
                    "Medical and health"
                ],
                "addr" => "香港西九龍海庭道19號, 急救及健康護理訓練中心",
                "area" => "Hong Kong",
                "tel" => "39710288"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hongkongredcross/posts/10156826548145677"
        },
        {
            url: "https://www.facebook.com/hongkongredcross/photos/a.10152852583935677/10156949666525677/"
        },
        {
            url: "https://www.facebook.com/HKRC.Health/photos/a.609518589081880/2771655679534816/"
        }
    ];
    public final tags:Array<Tag> = [
        medical
    ];
}

