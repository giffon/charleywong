package charleywong.entities;

class VillaVillaCafeBar implements Entity {
    public final id = "villavillacafe";
    public final name = [
        en => "Villa Villa Cafe & Bar"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/villavillacafe/",
            meta: [
                "id" => "1093830503969571",
                "about" => "Villa Villa Cafe\n開始營業於 2015年12月7日\n\n本公司成立於2015年，持有普通食肆牌照。\n牌照號碼：2211805812",
                "categories" => [
                    "Bar",
                    "Modern European restaurant",
                    "Coffee shop"
                ],
                "addr" => "北角錦屏街後街東發大厦25號A 地鋪",
                "area" => "Hong Kong",
                "email" => "villavillahk@gmail.com",
                "tel" => "27779033"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/villavillacafe/photos/a.1095909097095045/2990035801015689/"
        },
        {
            url: "https://www.facebook.com/villavillacafe/photos/a.1095909097095045/2891585354194068/"
        }
    ];
    public final tags:Array<Tag> = [];
}

