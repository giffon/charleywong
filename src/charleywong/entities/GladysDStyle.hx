package charleywong.entities;

class GladysDStyle implements Entity {
    public final id = "Gladys.D.style";
    public final name = [
        en => "Gladys D. Style"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Gladys.D.style/",
            meta: [
                "about" =>
                "Gladys.D 是本地創作品牌，所設計產品包括衣服及飾物！設計師憑着indigenous,incredible and infinite design概念設計出一系列時尚的產品！想要嘅可以到Facebook inbox 訂購 或what app 65523102",
                "categories" => [
                    "Clothing (brand)"
                ],
                "email" => "dingdinggladys@gmail.com",
                "tel" => "65523102",
                "id" => "346353725952242"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Gladys.D.style/photos/a.346354189285529/548670985720514/"
        },
        {
            url: "https://www.facebook.com/Gladys.D.style/photos/a.346354189285529/520368621884084/"
        }
    ];
    public final tags:Array<Tag> = [];
}

