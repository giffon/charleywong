package charleywong.entities;

class HKwilderness implements Entity {
    public final id = "HKwilderness";
    public final name = [
        zh => "原野",
        en => "Wilderness"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/HKwilderness/",
            meta: [
                "id" => "1500280393564107",
                "about" => "原野是1個喜愛郊野及風景攝影的青年，此專頁主要分享行山經歴、資訊及基本攝影技巧。令更多生活在城市的市民能更多接觸自然，及使用相片為郊野留下美麗一面。",
                "categories" => [
                    "Community"
                ],
                "email" => "kelvinyeungphotography@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HKwilderness/photos/a.1570798939845585/2524447717814031/"
        },
        {
            url: "https://www.facebook.com/HKwilderness/posts/2501111976814272"
        }
    ];
}

