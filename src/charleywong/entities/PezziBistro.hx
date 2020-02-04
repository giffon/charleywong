package charleywong.entities;

class PezziBistro implements Entity {
    public final id = "PezziBistro";
    public final name = [
        en => "Pezzi Bistro"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.openrice.com/restaurant/sr2.htm?shopid=159407"
        },
        {
            url: "https://www.facebook.com/PezziBistro/",
            meta: [
                "id" => "1408005429429647",
                "about" => "Pezzi Bistro意思是精緻的意式小館，以美國工業式Loft為設計風格，運用了水泥及磚塊牆身帶出原始的工業感覺，綴以不同的重金屬、鋼材及鎢絲吊燈等，別具一格。",
                "categories" => [
                    "Italian restaurant"
                ],
                "addr" => "新界 粉嶺 聯和墟 聯和道 一號地下",
                "area" => "Hong Kong",
                "email" => "pezzibistro@gmail.com",
                "tel" => "26699166"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/PezziBistro/photos/a.1432484303648426/2520919101471602/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

