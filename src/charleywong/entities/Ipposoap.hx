package charleywong.entities;

class Ipposoap implements Entity {
    public final id = "ippo.soap";
    public final name = [
        zh => "一步",
        en => "ippo handcrafted cosme"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ippo.soap/",
            meta: [
                "about" => "【為肌膚做的一個深呼吸練習】\n・不添加人工色素/香料\n・全成份標示，透明度高\n・絕不誇大手工皂/天然成份功效 - 切實解釋使用原材料原則/利弊\n・工作坊/ 代製母乳皂/ 回禮/ 活動禮品",
                "categories" => [
                    "Health/beauty",
                    "Skincare service",
                    "Arts and crafts shop"
                ],
                "email" => "ippo.soap@gmail.com",
                "tel" => "95065812",
                "id" => "190025698240541"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ippo.soap/photos/a.206322729944171/477054359537672/"
        },
        {
            url: "https://www.facebook.com/ippo.soap/photos/a.206322729944171/550197248890049/"
        },
        {
            url: "https://www.facebook.com/ippo.soap/photos/a.206322729944171/490763928166715/"
        }
    ];
}

