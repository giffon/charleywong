package charleywong.entities;

class ExplorerFusionRestaurant implements Entity {
    public final id = "ExplorerFusion";
    public final name = [
        en => "Explorer Fusion Restaurant"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ExplorerFusion/",
            meta: [
                "id" => "1167942996617425",
                "about" => "西日式餐廳（洋日料理）\n由Johnson及Brian 兩位前酒店大廚主理，致力把酒店質素的食物以親民的方式讓大家品嘗�",
                "categories" => [
                    "Sushi Restaurant",
                    "New American restaurant"
                ],
                "tel" => "26656781"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ExplorerFusion/photos/a.1168082076603517/2672748962803480/"
        },
        {
            url: "https://www.facebook.com/ExplorerFusion/posts/2513217908756587"
        }
    ];
}

