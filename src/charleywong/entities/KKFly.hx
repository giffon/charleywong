package charleywong.entities;

class KKFly implements Entity {
    public final id = "kkfly.hk";
    public final name = [
        en => "KKFly"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://kkfly.hk"
        },
        {
            url: "https://www.facebook.com/kkfly.hk/",
            meta: [
                "id" => "228330547717820",
                "about" => "KKFly 為你搜邏最抵、最新的旅遊情報！搶平機票，快人一步！\n一個獨立的平價旅遊兼演唱會售賣情報網，不是旅行社，也不賣旅遊產品，每日送上最抵玩的機票酒店優惠！如果有關於平酒店、",
                "categories" => [
                    "App Page",
                    "Local & travel website"
                ],
                "email" => "kkfly@awes.app"
            ]
        },
        {
            url: "https://www.instagram.com/kkfly.hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kkfly.hk/videos/509057066613243/"
        },
        {
            url: "https://www.facebook.com/kkfly.hk/posts/457541278130078"
        }
    ];
    public final tags:Array<Tag> = [
        shop,
        media
    ];
}

