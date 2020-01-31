package charleywong.entities;

class ZTORE3C implements Entity {
    public final id = "3CZTORE";
    public final name = [
        en => "3C Ztore",
        zh => "三C會館"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.3cztore.com"
        },
        {
            url: "https://www.facebook.com/3CZTORE/",
            meta: [
                "id" => "365024567588950",
                "about" => "Chic+Chill+ConvenIent=3C Ztore\n\n將最CHIC嘅野帶俾辛勞嘅打工仔，等大家可以用最CONVENIENT 嘅方法去緊貼潮流，chill住咁這過每一日。",
                "categories" => [
                    "Retail company",
                    "Product/service"
                ],
                "email" => "3cztore@gmail.com",
                "tel" => "98433309"
            ]
        },
        {
            url: "https://www.instagram.com/3cztore/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/3CZTORE/photos/a.373587860065954/625113298246741/"
        },
        {
            url: "https://www.facebook.com/3CZTORE/photos/a.373587860065954/570566890368049/"
        }
    ];
    public final tags:Array<Tag> = [
        accessories,
        shop
    ];
}

