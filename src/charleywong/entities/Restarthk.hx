package charleywong.entities;

class Restarthk implements Entity {
    public final id = "restarthk";
    public final name = [
        zh => "綠活百貨",
        en => "Re start"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/restarthk/",
            meta: [
                "about" => "香港本地品牌，提供手製及搜羅自外國的天然／有機產品，主售生活日常消耗品，宗旨「肌膚無傷害．動物無傷害．環境無傷害」。成分經過嚴格挑選，不加防腐，所以絕大部分新鮮製造。",
                "categories" => [
                    "Retail company",
                    "Health & wellness website",
                    "Pet supplies"
                ],
                "email" => "restarthk@gmail.com",
                "id" => "214873735366040"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/restarthk/posts/1253172094869527"
        },
        {
            url: "https://www.facebook.com/restarthk/posts/1299272893592780"
        }
    ];
    public final tags:Array<Tag> = [];
}

