package charleywong.entities;

class Zapjokstudio implements Entity {
    public final id = "zapjok.studio";
    public final name = [
        zh => "習作工作室",
        en => "zapjok studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/zapjok.studio/",
            meta: [
                "about" => "生 活 就 是 每 天 的 習 作 。",
                "categories" => [
                    "Art gallery",
                    "Art"
                ],
                "addr" => "1/f, 85 Fuk Wa Street, Sham Shui Po,",
                "area" => "Hong Kong",
                "email" => "zapjok85@gmail.com",
                "tel" => "93816260",
                "id" => "828967090476973"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/zapjok.studio/posts/3266622946711363"
        },
        {
            url: "https://www.facebook.com/zapjok.studio/photos/a.832051960168486/2940904982616496/"
        },
        {
            url: "https://www.facebook.com/zapjok.studio/posts/3078945628812430"
        }
    ];
}

