package charleywong.entities;

class MsCeliaBeaute implements Entity {
    public final id = "msceliabeaute";
    public final name = [
        en => "MsCelia Beaute"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/msceliabeaute/"
        },
        {
            url: "https://www.facebook.com/msceliabeaute/",
            meta: [
                "id" => "153482454724693",
                "about" => "由2006年至今, 提供新娘化妝， Gel甲， 韓國駐顏粉底， 韓國娃娃電睫毛, 日式植睫毛， 韓國半永久紋繡 - 柔絲飄眉， 粉霧眉， 飄霧眉， 美瞳線， 隱形眼線， 下眼線， 髮際線等專業服務",
                "categories" => [
                    "Makeup artist",
                    "Health/beauty",
                    "Nail salon"
                ],
                "addr" => "英皇道995-997號萬利廣場23號舖",
                "area" => "Hong Kong",
                "email" => "msceliabeaute@gmail.com",
                "tel" => "94543300"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/msceliabeaute/posts/3175271402545768"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding
    ];
}

