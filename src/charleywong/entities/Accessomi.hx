package charleywong.entities;

class Accessomi implements Entity {
    public final id = "accesso.mi";
    public final name = [
        en => "Mi.AY"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/accesso.mi/",
            meta: [
                "about" => "設計學院畢業，搜羅世界各地材料，自家設計及制作，與潮流掛勾，物料高質但是價廉物美。",
                "categories" => [
                    "Accessories"
                ],
                "id" => "1498509796829718"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/accesso.mi/posts/3411758998838112"
        },
        {
            url: "https://www.facebook.com/accesso.mi/photos/a.1701977709816258/3376477609032918/"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}
