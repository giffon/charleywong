package charleywong.entities;

class Organicwe implements Entity {
    public final id = "organicwe";
    public final name = [
        en => "Organic We",
        zh => "對得住地球基地"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.organicwe.com"
        },
        {
            url: "https://www.facebook.com/organicwe/",
            meta: [
                "about" => "《Organic We 對得住地球基地》綠色生活百貨",
                "categories" => [
                    "Shopping & retail",
                    "Organic food shop",
                    "Health Food Shop"
                ],
                "addr" => "旺角西洋菜南街5號好望角大廈16樓1601室",
                "area" => "Hong Kong",
                "email" => "info@organicwe.com",
                "tel" => "37912666"
            ]
        },
        {
            url: "https://www.instagram.com/organic_we/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/organicwe/posts/2505169219712447"
        }
    ];
}

