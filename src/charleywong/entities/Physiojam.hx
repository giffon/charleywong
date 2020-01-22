package charleywong.entities;

class Physiojam implements Entity {
    public final id = "physiojam";
    public final name = [
        en => "Physiojam"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/physiojam/",
            meta: [
                "about" => "個人簡介\n2013成立自家品牌Physiojam\n曾經被邀請參與活動紮染分享及訪問...\n\n\n\n\n\n\nSee more",
                "categories" => [
                    "Clothing (brand)"
                ],
                "id" => "1385300911728461"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/physiojam/videos/2489952934621717/"
        }
    ];
}

