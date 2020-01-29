package charleywong.entities;

class Coffee29Co implements Entity {
    public final id = "twentyninecoffee";
    public final name = [
        en => "29 Coffee Co"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/twentyninecoffee/",
            meta: [
                "about" => "人說三十而立；\n那在二十九的分水嶺；\n你又為它界定了甚麼 ?",
                "categories" => [
                    "Coffee shop"
                ],
                "addr" => "Shop D, 29 Tai Yip St.",
                "area" => "Ngau Tau Kok",
                "email" => "info@29coffeeco.com",
                "tel" => "62789799",
                "id" => "149922175664368"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/twentyninecoffee/photos/a.151250782198174/441172499872666/"
        },
        {
            url: "https://www.facebook.com/twentyninecoffee/photos/a.151250782198174/437287753594474/"
        }
    ];
    public final tags:Array<Tag> = [];
}

