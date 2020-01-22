package charleywong.entities;

class Kindergarteninsane implements Entity {
    public final id = "kindergarteninsane";
    public final name = [
        zh => "幼稚園工作室",
        en => "Kindergarten Insane Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kindergarteninsane/",
            meta: [
                "about" => "「幼稚園」既宗旨：回歸幼稚，忘記規限，愉快地重新認識呢個美麗既世界。\n\n呢到有兩條校規：...\n\n\n\nSee more",
                "categories" => [
                    "Cultural centre",
                    "Community group"
                ],
                "addr" => "土瓜灣旭日街1A號福成工業大廈12樓1205室",
                "area" => "Hong Kong",
                "email" => "kindinsane@gmail.com",
                "tel" => "60824067",
                "id" => "992635560828487"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kindergarteninsane/videos/622830658483276/"
        },
        {
            url: "https://www.facebook.com/kindergarteninsane/posts/2623543634404330"
        }
    ];
}

