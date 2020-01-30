package charleywong.entities;

class Islandworkbench implements Entity {
    public final id = "island.workbench";
    public final name = [
        zh => "島中坊研",
        en => "Island Workbench"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/island.workbench/",
            meta: [
                "about" => "「島中坊研」是個創作品牌的實驗工作坊，把生活中的感受轉化成獨特的單品，出售到每個喜歡我們的人手上。",
                "categories" => [
                    "Design & fashion",
                    "Shopping & retail",
                    "Coffee shop"
                ],
                "addr" => "新興後街2號後座地下",
                "area" => "Cheung Chau, Hong Kong",
                "email" => "info@island-workbench.com",
                "tel" => "54806627",
                "id" => "136459776538956"
            ]
        },
        {
            url: "https://www.instagram.com/island_workbench/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/island.workbench/photos/a.177160852468848/1257164091135180/"
        },
        {
            url: "https://www.facebook.com/island.workbench/posts/1181235635394693"
        }
    ];
    public final tags:Array<Tag> = [
        accessories,
        clothing,
        food
    ];
}

