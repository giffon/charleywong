package charleywong.entities;

class Blesssofreehk implements Entity {
    public final id = "blesssofreehk";
    public final name = [
        zh => "自由人",
        en => "Bless, so free"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/blesssofreehk/",
            meta: [
                "about" => "關愛 x 婦女x 手作 x 環保 x 藝術 x 公平貿易",
                "categories" => [
                    "Shopping & retail"
                ],
                "email" => "blesssofree@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/blesssofreehk/posts/499138027479436"
        },
        {
            url: "https://www.facebook.com/blesssofreehk/posts/495561387837100"
        },
        {
            url: "https://www.facebook.com/blesssofreehk/photos/a.400671073992799/505197670206805/"
        }
    ];
}

