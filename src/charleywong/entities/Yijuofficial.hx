package charleywong.entities;

class Yijuofficial implements Entity {
    public final id = "yijuofficial";
    public final name = [
        zh => "一句制作",
        en => "YIJU"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/yijuofficial/",
            meta: [
                "about" => "Design & Create our daily selection. Hong Kong Lifestyle Brands since 2015.\n\n設計及開發屬於我們的生活選物。從零到一的商品皆有它們的概念和故事。",
                "categories" => [
                    "Local business"
                ],
                "addr" => "RM R,5/F, 2 KWEI TEI STREET, INTERNATIONAL INDUSTRIAL CENTRE",
                "area" => "Hong Kong",
                "tel" => "63460922"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/yijuofficial/photos/a.827906733994677/2388049301313738/"
        },
        {
            url: "https://www.facebook.com/yijuofficial/photos/a.827906733994677/2243070615811608/"
        }
    ];
}

