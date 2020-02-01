package charleywong.entities;

class Chanonephoto implements Entity {
    public final id = "chanonephoto";
    public final name = [
        zh => "陳一",
        en => "Chan One"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.chan-one.com"
        },
        {
            url: "https://www.facebook.com/chanonephoto/",
            meta: [
                "id" => "575721652529896",
                "about" => "【香港職業攝影師 - 陳一 】\n具多年的室內與室外人像攝影經驗，在觀塘牛頭角設有專業攝影空間，並提供各種攝影服務。",
                "categories" => [
                    "Photographer",
                    "Visual arts"
                ],
                "email" => "chanonephoto@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/chanonephoto/photos/a.582790531823008/2016300898471957/"
        }
    ];
    public final tags:Array<Tag> = [
        photographer
    ];
}

