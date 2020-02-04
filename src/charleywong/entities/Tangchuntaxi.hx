package charleywong.entities;

class Tangchuntaxi implements Entity {
    public final id = "tangchuntaxi";
    public final name = [
        zh => "騰駿的士管理公司"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/tangchuntaxi/",
            meta: [
                "id" => "1494497314192622",
                "about" => "我地主力係灣仔區, 另外鰂魚涌及港島區其他位置, 都設有出租本地商業用的士車輛, 包括五座位、四座位及福特四座位行李專用的士。\n我們另設有的士托管服務, 歡迎搵我地查詢.",
                "categories" => [
                    "Taxi service"
                ],
                "email" => "tang.chun_taxi@yahoo.com",
                "tel" => "52333394"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tangchuntaxi/photos/a.1494506004191753/2202803830028630/"
        },
        {
            url: "https://www.facebook.com/tangchuntaxi/photos/a.1494506004191753/2193558404286506/"
        },
        {
            url: "https://www.facebook.com/tangchuntaxi/posts/2185091855133161"
        }
    ];
    public final tags:Array<Tag> = [
        transport
    ];
}

