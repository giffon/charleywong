package charleywong.entities;

class Cannanworkshop implements Entity {
    public final id = "cannanworkshop";
    public final name = [
        zh => "冰祈美麗教室",
        en => "Pinkie Beauty"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.marykay.com.hk"
        },
        {
            url: "https://www.facebook.com/cannanworkshop/",
            meta: [
                "id" => "305095822891667",
                "about" => "Pinky會定時發放健康, 護膚及扮靚資訊。務求讓朋友們由內靚到外。免費護膚及化妝教學、代理Mary Kay產品。歡迎查詢及選",
                "categories" => [
                    "Health/beauty"
                ],
                "email" => "jesus_love_pinky@yahoo.com.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cannanworkshop/photos/a.451087508292497/2609377925796767/"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        shop,
    ];
}

