package charleywong.entities;

class VesicaPiscis implements Entity {
    public final id = "Vesicapiscis.lab";
    public final name = [
        en => "Vesica Piscis"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Vesicapiscis.lab/",
            meta: [
                "about" => "Vesica Piscis 係一間熱愛 創作 設計 手作既小店，小店售賣之商品，全部都係我地自家設計，自家製造。所以係真真正正既［香港製造］。\n同時我們亦提供客制化訂造和設計的服務。",
                "categories" => [
                    "Design & fashion",
                    "Product/service",
                    "Arts and crafts shop"
                ],
                "addr" => "新蒲崗景福街106號太子工業大廈7樓太子坊730室",
                "area" => "Hong Kong",
                "tel" => "54920740",
                "id" => "265242277341208"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Vesicapiscis.lab/photos/a.331678774030891/681453145720117"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

