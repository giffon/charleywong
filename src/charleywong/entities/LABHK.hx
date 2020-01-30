package charleywong.entities;

class LABHK implements Entity {
    public final id = "LAB.HK";
    public final name = [
        en => "LAB Collector Hong Kong"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/LAB.HK/",
            meta: [
                "about" => "Address: 尖沙咀亞士厘道好利時大廈4樓\n\nLAB 對於我們, 每一件物品，都應該用一生一世。希望大家可以將從我們店中購買的物品在日常生活中一直使用，甚至傳給下一代。",
                "categories" => [
                    "Gift Shop",
                    "Collectibles Store"
                ],
                "email" => "info@lab-collector-hk.com",
                "tel" => "27568111",
                "id" => "125118404190102"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/LAB.HK/posts/425613440807262"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

