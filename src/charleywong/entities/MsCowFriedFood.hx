package charleywong.entities;

class MsCowFriedFood implements Entity {
    public final id = "MsCowFriedFood";
    public final name = [
        zh => "新記小食"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/MsCowFriedFood/",
            meta: [
                "about" => "歡迎外賣自取\n推介生炸雞脾，腸粉",
                "categories" => [
                    "Hong Kong restaurant",
                    "Food stall",
                    "Fast food restaurant"
                ],
                "addr" => "長沙灣道1號",
                "area" => "Hong Kong",
                "id" => "753772002120859"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MsCowFriedFood/posts/876320536532671"
        },
        {
            url: "https://www.facebook.com/MsCowFriedFood/posts/833118124186246"
        }
    ];
}

