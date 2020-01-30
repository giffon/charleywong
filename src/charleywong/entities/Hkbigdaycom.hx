package charleywong.entities;

class Hkbigdaycom implements Entity {
    public final id = "hkbigday";
    public final name = [
        en => "hkbigday.com"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hkbigday.com"
        },
        {
            url: "https://www.facebook.com/hkbigday/",
            meta: [
                "id" => "170196819108",
                "about" => "The Specialist of Visual Arts / Art Design + Photography + Retouch / hkbigday成立於2006年曾為超過三百對新人擔任婚宴及婚紗攝影師。",
                "categories" => [
                    "Wedding planning service",
                    "Product/service",
                    "Event videographer"
                ],
                "email" => "info@hkbigday.com",
                "tel" => "96812255"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkbigday/photos/a.10150183110819109/10156747266029109/"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}

