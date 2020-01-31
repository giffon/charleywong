package charleywong.entities;

class Sddessert implements Entity {
    public final id = "sddessert";
    public final name = [
        zh => "想甜嚐甜",
        en => "Sweet Dreamer Dessert"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/sddessert/",
            meta: [
                "id" => "188370764869801",
                "about" => "【想甜 | 嚐甜】\n一間令甜度 ∝ 快樂的甜品店\n堅持甜品當飯食的原則。",
                "categories" => [
                    "Dessert shop",
                    "Restaurant",
                    "Brand"
                ],
                "email" => "87admin@sddessert.com"
            ]
        },
        {
            url: "https://www.instagram.com/sweet_dreamer_dessert/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sddessert/posts/1025435044496698"
        },
        {
            url: "https://www.facebook.com/sddessert/posts/1051439208562948"
        },
        {
            url: "https://www.facebook.com/sddessert/posts/1046439772396225"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

