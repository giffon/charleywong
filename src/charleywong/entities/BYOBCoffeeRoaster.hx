package charleywong.entities;

class BYOBCoffeeRoaster implements Entity {
    public final id = "byobcoffeeroaster";
    public final name = [
        en => "BYOB Coffee Roaster"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/byobcoffeeroaster/",
            meta: [
                "about" => "BYOB 的名字是有以下三種解釋：\nBring your own Bike 帶你的自行車來\nBuy your own Bean 挑選你喜歡的咖啡豆\nBe your own Barista 成為自己的咖啡師",
                "categories" => [
                    "Coffee shop",
                    "British restaurant"
                ],
                "addr" => "虹橋青桃徑5號文翔大厦2A地下",
                "area" => "Tuen Mun",
                "tel" => "23001163",
                "id" => "1435724499817417"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/byobcoffeeroaster/photos/a.1495246417198558/2635230126533509/"
        },
        {
            url: "https://www.facebook.com/byobcoffeeroaster/posts/2596318183758037"
        }
    ];
}

