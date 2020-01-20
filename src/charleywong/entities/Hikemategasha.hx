package charleywong.entities;

class Hikemategasha implements Entity {
    public final id = "hikemate.gasha";
    public final name = [
        zh => "Hike迷 • 嘉莎"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hikemate.gasha/",
            meta: [
                "about" => "| 攀山涉水 | 野外露營 | 運動愛好者 | (⁎⁍̴̛ᴗ⁍̴̛⁎)\n\n▼ 青 春 不 要 留 白...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Local & travel website",
                    "Personal blog",
                    "Sport & recreation"
                ],
                "email" => "hikemate.gasha@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/hikemate.gasha/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hikemate.gasha/posts/862138254147245"
        },
        {
            url: "https://www.facebook.com/hikemate.gasha/photos/a.408527079508367/890134544680949/"
        }
    ];
}

