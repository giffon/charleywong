package charleywong.entities;

class Tktradingcompany implements Entity {
    public final id = "tktradingcompany";
    public final name = [
        zh => "TK天璣文創"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/tktradingcompany/",
            meta: [
                "id" => "840822379298314",
                "about" => "世界每日都有好事壞事發生\n希望大家生活能夠多一點正能量",
                "categories" => [
                    "Wholesale and supply shop",
                    "Retail company"
                ],
                "email" => "tienkaytrading@gmail.com",
                "tel" => "97416408"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tktradingcompany/photos/a.1211692918877923/2564355460278322/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

