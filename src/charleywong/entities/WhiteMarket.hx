package charleywong.entities;

class WhiteMarket implements Entity {
    public final id = "whitemarkethk";
    public final name = [
        en => "White Market"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/whitemarkethk/",
            meta: [
                "about" => "白紙，市集｜White Market\n由純白，到著墨添上色彩，展現眼前。\n\n\n腦海空空的構思，到拿起一張白紙，去創造自己的品牌，把所思所想親手做出來，透過雙手呈現於客人眼前。",
                "categories" => [
                    "Community"
                ],
                "email" => "whitemarkethk@gmail.com",
                "tel" => "95263266",
                "id" => "150292205552365"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/whitemarkethk/photos/a.152363365345249/554335391814709/"
        }
    ];
}

