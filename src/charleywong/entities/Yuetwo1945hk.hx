package charleywong.entities;

class Yuetwo1945hk implements Entity {
    public final id = "yuetwo1945hk";
    public final name = [
        zh => "悦和醬園",
        en => "Yuet Wo 1945"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.yuetwo.hk"
        },
        {
            url: "https://www.facebook.com/yuetwo1945hk/",
            meta: [
                "id" => "2242714255992502",
                "about" => "我們這一缸～悦和醬園\n香港製造～始於1945年\n天然生曬～酒醋醬一條龍\n\n信念：傳統不等於守舊，創新不可以忘本",
                "categories" => [
                    "Producer",
                    "Food wholesaler",
                    "Speciality food shop"
                ],
                "addr" => "荃灣街市街33號地下",
                "area" => "Hong Kong",
                "email" => "info@yuetwo.hk",
                "tel" => "24923354"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/yuetwo1945hk/posts/2394297897500803"
        }
    ];
}

