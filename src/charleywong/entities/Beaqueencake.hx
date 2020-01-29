package charleywong.entities;

class Beaqueencake implements Entity {
    public final id = "beaqueencake";
    public final name = [
        en => "Be a Queen",
        zh => "女王蛋糕"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/beaqueencake/",
            meta: [
                "id" => "101328307946558",
                "about" => "👸Be a Queen 女王蛋糕\n皇牌👑伯爵茶海鹽焦糖醬戚風蛋糕❤️\n香梨酒香慕絲蛋糕🎂 B52雞尾酒朱古力慕絲蛋糕🌹\n一般訂單需於3天前預訂⭐️按訂單情況急單\n銀行/ Payme 過數付款",
                "categories" => [
                    "Product/service",
                    "Cupcake Shop"
                ],
                "email" => "beaqueencake@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/beaqueencake/posts/136022731143782"
        }
    ];
    public final tags:Array<Tag> = [];
}

