package charleywong.entities;

class Buymorehk implements Entity {
    public final id = "buymore.hk";
    public final name = [
        zh => "未來科技"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://buymore.hk"
        },
        {
            url: "https://www.facebook.com/buymore.hk/",
            meta: [
                "about" => "專營電腦組裝/原廠電腦/挖礦電腦/電腦週邊配件/打印機及掃描器/各類維修/閉路電視系統",
                "categories" => [
                    "Computer shop",
                    "Electronics",
                    "Business service"
                ],
                "addr" => "香港灣仔軒尼詩道298 號 298電腦特區UG 158號鋪",
                "area" => "Hong Kong",
                "email" => "ask@buymore.hk",
                "tel" => "21173773"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/buymore.hk/photos/a.691056894267994/3533581963348792/"
        },
        {
            url: "https://www.facebook.com/buymore.hk/photos/a.141889545851401/3524315097608812/"
        }
    ];
}

