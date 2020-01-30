package charleywong.entities;

class LetsGoBusinessManagement implements Entity {
    public final id = "LetsGoBusinessManagement";
    public final name = [
        zh => "Let’s Go 合法追收欠款（你的收數專家）"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.letsgoprobiz.com"
        },
        {
            url: "https://www.facebook.com/LetsGoBusinessManagement/",
            meta: [
                "id" => "1485470458175231",
                "about" => "本公司力高Let’s Go是壞賬代收專家， 秉承合情合理合法處理每一個個案，保證不成功不收費為每一個商家服務， 資料絕對保密，如有查詢歡迎致電 852-66898225",
                "categories" => [
                    "Consultation agency"
                ],
                "email" => "support@letsgoprobiz.com",
                "tel" => "66898225"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/LetsGoBusinessManagement/posts/2220841034638166"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

