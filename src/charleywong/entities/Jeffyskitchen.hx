package charleywong.entities;

class Jeffyskitchen implements Entity {
    public final id = "jeffyskitchen";
    public final name = [
        en => "Jeffy\'s kitchen"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/jeffyskitchen/",
            meta: [
                "id" => "123086971686396",
                "about" => "Jeffy\'s kitchen 是間西餐外賣店 食物主打有招牌軍艦蝦多士,秘制瑞士雞翼,巴馬火腿迷你薄餅,自家制薯蓉芝士波,安格斯牛肉漢堡,卡邦尼意粉,黑松露鮮菌意大利飯...店主亦在區內長大,請多支持小店",
                "categories" => [
                    "Kitchen/Cooking"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/jeffyskitchen/posts/483647482297008"
        },
        {
            url: "https://www.facebook.com/jeffyskitchen/photos/a.123267398335020/457607164901040/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

