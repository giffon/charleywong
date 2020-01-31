package charleywong.entities;

class Sweetbonbonhk implements Entity {
    public final id = "sweetbonbonhk";
    public final name = [
        zh => "滑嘟嘟",
        en => "Sweet Bon Bon"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/sweetbonbonhk/",
            meta: [
                "id" => "1445843262331310",
                "about" => "自家製造豆漿, 海帶綠豆沙,薏米紅豆沙,自家磨芝麻糊, 香滑合桃糊，客家糍粑，手工芋圓",
                "categories" => [
                    "Food stall",
                    "Dessert shop"
                ],
                "addr" => "大埔墟街市及熟食中心2樓29號舖位",
                "area" => "Hong Kong",
                "tel" => "91729433"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sweetbonbonhk/posts/2336941086554852"
        },
        {
            url: "https://www.facebook.com/sweetbonbonhk/posts/2389539214628372"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

