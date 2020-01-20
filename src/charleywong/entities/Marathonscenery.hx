package charleywong.entities;

class Marathonscenery implements Entity {
    public final id = "marathonscenery";
    public final name = [
        zh => "馬拉松 看世界",
        en => "Run the World"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/marathonscenery/",
            meta: [
                "about" => "To share the beauty of marathon races around the world.\n\n邁步、探索、追求夢想，跨過城市、越過不同疆土，跑向全世界，看遍路上千奇百景。\n\n透過RTW編輯部的人文觀察，帶領大家神遊馬拉松歡樂國度。",
                "categories" => [
                    "Sport & recreation",
                    "Community",
                    "Sports"
                ],
                "email" => "s985720@yahoo.com.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/marathonscenery/posts/1157070141162093"
        },
        {
            url: "https://www.facebook.com/marathonscenery/photos/a.358266381042477/1050029758532799/"
        },
        {
            url: "https://www.facebook.com/marathonscenery/posts/1050042911864817"
        }
    ];
}

