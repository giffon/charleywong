package charleywong.entities;

class Eatojoy implements Entity {
    public final id = "eatojoy";
    public final name = [
        zh => "e肚仔"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.eatojoy.com"
        },
        {
            url: "https://www.facebook.com/eatojoy/",
            meta: [
                "id" => "888310438031984",
                "about" => "e肚仔外賣自取平台的成立是希望讓餐廳和客戶可以安安樂樂食番餐, 成為一站式餐飲O2O平台, 打造線上飲食生態。e肚仔外賣自取平台強調外賣自取無加成、無最低消費和無運費。",
                "categories" => [
                    "Product/service",
                    "Food and drink"
                ],
                "email" => "business@eatojoy.com"
            ]
        },
        {
            url: "https://www.instagram.com/eatojoy/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/eatojoy/posts/1206162686246756"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

