package charleywong.entities;

class Weaveyard implements Entity {
    public final id = "weaveyard";
    public final name = [
        zh => "織園",
        en => "Weave Yard"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/weaveyard/",
            meta: [
                "about" => "簡單織布。表達自我。\n\n本店設有織布體驗班及訂製服務， 歡迎查詢。",
                "categories" => [
                    "Arts & Crafts Store",
                    "Home Improvement"
                ],
                "addr" => "香港牛頭角偉業街128 號香港企業大廈1樓B3室",
                "area" => "Ngau Tau Kok",
                "email" => "cloudyjg@yahoo.com",
                "tel" => "97517537",
                "id" => "1558321304436101"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/weaveyard/photos/a.1558621941072704/2506769219591300/"
        },
        {
            url: "https://www.facebook.com/weaveyard/posts/2461103944157828"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

