package charleywong.entities;

class M3Italian implements Entity {
    public final id = "M3italian";
    public final name = [
        en => "M3 Italian"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/M3italian/",
            meta: [
                "id" => "419864611485997",
                "about" => "用心做菜式為大家提供精致的意大利風情美食",
                "categories" => [
                    "Italian restaurant",
                    "Modern European restaurant",
                    "European restaurant"
                ],
                "addr" => "大圍積富街33號積康樓地下E-G舖",
                "area" => "Sha Tin, Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/M3italian/posts/1420332178105897"
        },
        {
            url: "https://www.facebook.com/M3italian/posts/1592220047583775"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

