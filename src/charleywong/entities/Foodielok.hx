package charleywong.entities;

class Foodielok implements Entity {
    public final id = "foodielok";
    public final name = [
        zh => "吃貨玩樂",
        en => "Foodielok"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.youtube.com/channel/UC5KluAjrf3itm7X1teOp75A"
        },
        {
            url: "https://www.facebook.com/foodielok/",
            meta: [
                "id" => "427108547745783",
                "about" => "物以類聚，吃貨身邊總是充斥着另一班吃貨，他們對吃總是有一份執着和堅持，沒人可以阻擋吃貨吃東西！這個專頁會和大家一起尋找好吃的和煮好吃的，讓我們一起和吃貨玩樂吧！",
                "categories" => [
                    "Video creator"
                ],
                "email" => "loklucas@yahoo.com.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/foodielok/posts/754999671623334"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

