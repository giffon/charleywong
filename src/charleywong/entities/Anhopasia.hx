package charleywong.entities;

class Anhopasia implements Entity {
    public final id = "anhop.asia";
    public final name = [
        en => "Incubator Ministries",
        zh => "孵化箱事工"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.anhop.asia"
        },
        {
            url: "https://www.facebook.com/anhop.asia/",
            meta: [
                "id" => "142055345857964",
                "about" => "建立聖潔無瑕疵的新婦，就是耶穌基督的教會，讓她裝飾整齊，成長成熟，等候迎接基督新郎回來，與祂一同掌權。",
                "categories" => [
                    "Non-profit organisation",
                    "Religious organisation"
                ],
                "addr" => "九龍偉業街182號觀塘碼頭廣場2樓201室 | 201, 2/F, Kwun Tong Harbour Plaza, 182 Wai Yip Street, Kowloon, H.K.",
                "area" => "Hong Kong",
                "email" => "mail@incubatorministries.asia",
                "tel" => "29671844"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/anhop.asia/photos/a.637677622962398/2697209183675888/"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}

