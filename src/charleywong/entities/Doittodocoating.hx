package charleywong.entities;

class Doittodocoating implements Entity {
    public final id = "doittodocoating";
    public final name = [
        zh => "鍍亦有鍍-汽車美容鍍膜店（粉嶺）"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/doittodocoating/",
            meta: [
                "id" => "946766628806312",
                "about" => "本店提供專業汽車美容鍍膜服務，如有任何問題及預約可致電或WhatsApp 54851966 卡通/60105193 ming\n本店位置設於粉嶺聯和墟聯發街22號(可在GOOGLE MAP搜尋鍍亦有鍍)",
                "categories" => [
                    "Vehicle detailing service",
                    "Cars",
                    "Motor vehicle company"
                ],
                "addr" => "聯和墟聯發街22號",
                "area" => "Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/doittodocoating/posts/1350537751762529"
        }
    ];
    public final tags:Array<Tag> = [
        automobile
    ];
}

