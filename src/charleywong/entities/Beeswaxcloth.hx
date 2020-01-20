package charleywong.entities;

class Beeswaxcloth implements Entity {
    public final id = "beeswaxcloth";
    public final name = [
        zh => "蜜蠟布",
        en => "Beeswax Cloth"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/beeswaxcloth/",
            meta: [
                "about" => "包裹．清洗．重用\n蜜蠟布適用於包裹乾身食物，如面包，三文治，瓜果蔬菜。\n蜜蠟布可當作保鮮紙，更可清洗及重複使用。\n當蜜蠟布出現較多裂痕時，可以重新溶蠟修補繼續使用。",
                "categories" => [
                    "Product/service"
                ],
                "email" => "beeswaxcloth@gmail.com",
                "tel" => "96518567"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/beeswaxcloth/photos/a.2102717133292960/2576050932626242/"
        },
        {
            url: "https://www.facebook.com/beeswaxcloth/posts/2437020549862615"
        }
    ];
}

