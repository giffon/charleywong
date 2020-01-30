package charleywong.entities;

class Iphonepricehk implements Entity {
    public final id = "iphonepricehk";
    public final name = [
        zh => "iPhone先達回收價"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.iphoneprice.hk"
        },
        {
            url: "https://www.facebook.com/iphonepricehk/",
            meta: [
                "id" => "491229544221160",
                "about" => "有最快, 最多, 最齊的 iPhone X 及 iPhone 8 Plus 報價資料 ; 每天更新回收價格. 本站也會定時發佈一些關於Apple的資訊以供參考! http://www.iphoneprice.hk/",
                "categories" => [
                    "Reference website"
                ],
                "email" => "iphoneprice@techorz.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/iphonepricehk/posts/3055134974497258"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

