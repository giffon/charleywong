package charleywong.entities;

class Moreeggettes implements Entity {
    public final id = "more.eggettes";
    public final name = [
        en => "More Eggettes",
        zh => "摩芽雞蛋仔"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/more.eggettes/",
            meta: [
                "id" => "358111281058534",
                "about" => "IG: https://www.instagram.com/moreeggetteshk/\n\n...\n\n\nSee more",
                "categories" => [
                    "Dessert shop",
                    "Food stall",
                    "Hong Kong restaurant"
                ],
                "addr" => "康強街32-34號康強洋樓16A",
                "area" => "San Po Kong",
                "email" => "more.eggettes@gmail.com",
                "tel" => "92088979"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/more.eggettes/posts/1316458275223825"
        },
        {
            url: "https://www.facebook.com/more.eggettes/photos/a.358399587696370/1356489637887355/"
        },
        {
            url: "https://www.facebook.com/more.eggettes/videos/560670501147654/"
        },
        {
            url: "https://www.facebook.com/more.eggettes/photos/a.358399587696370/1333036006899385/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

