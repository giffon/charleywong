package charleywong.entities;

class HANASoftCream implements Entity {
    public final id = "hanasoftcream";
    public final name = [
        en => "HANA Soft Cream ハナソフトクリーム"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hanasoftcream/",
            meta: [
                "id" => "1098923483520277",
                "about" => "華軟雪糕\n日本進口軟雪糕\n8.0特濃牛乳\nFB and IG: hanasoftcream",
                "categories" => [
                    "Gelato shop"
                ],
                "addr" => "深水埗欽州街37K西九龍中心6樓628A",
                "area" => "Sham Shui Po"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hanasoftcream/photos/a.1294250863987537/2614218258657451/"
        },
        {
            url: "https://www.facebook.com/hanasoftcream/photos/a.1294250863987537/2582130798532864/"
        },
        {
            url: "https://www.facebook.com/hanasoftcream/photos/a.1294250863987537/2550830728329538/"
        }
    ];
}

