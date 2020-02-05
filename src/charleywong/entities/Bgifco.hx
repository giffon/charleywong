package charleywong.entities;

class Bgifco implements Entity {
    public final id = "bgifco";
    public final name = [
        zh => "桌樂無限",
        en => "BG Infinity"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.bgif.co"
        },
        {
            url: "https://www.facebook.com/bgifco/",
            meta: [
                "id" => "980241455340577",
                "about" => "放假打機打到悶？諗唔到地方一齊玩？ 嚟桌樂啦！ 無論一家大細定朋友聚會，我地無任歡迎，專人教授，為您提供貼心的桌遊服務！",
                "categories" => [
                    "Event planner",
                    "Party & entertainment service",
                    "Games/toys"
                ],
                "addr" => "九龍旺角西洋菜南街5號好望角大廈1404室",
                "area" => "Hong Kong",
                "email" => "info@bgif.co",
                "tel" => "39545967"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bgifco/posts/2891177927580244"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

