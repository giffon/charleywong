package charleywong.entities;

class DiamondThaiBoxingFitness implements Entity {
    public final id = "DiamondFitness";
    public final name = [
        en => "Diamond Thai Boxing & Fitness"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/DiamondFitness/",
            meta: [
                "id" => "417181881673271",
                "about" => "Tel 23921133\n地點\n西洋菜南街246-248號，永興隆大厦二樓全層 (始創中心後面，義順牛奶公司樓上)2/F 246-248 Sai Yeung Choi St. South , Mong Kok, Hong Kong",
                "categories" => [
                    "Gym/Physical fitness centre",
                    "Martial arts school"
                ],
                "addr" => "2/F, Wing Hing Lung Building, 246-248 Sai Yeung Choi Street, Mong Kok",
                "area" => "Mong Kok",
                "email" => "diamondthaiboxing@gmail.com",
                "tel" => "23921133"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/DiamondFitness/photos/a.619823188075805/2756451814412921/"
        },
        {
            url: "https://www.facebook.com/DiamondFitness/photos/a.619823188075805/2930073137050787/"
        }
    ];
    public final tags:Array<Tag> = [
        fitness,
        salon
    ];
}

