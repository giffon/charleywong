package charleywong.entities;

class Kidultstuff implements Entity {
    public final id = "kidultstuff";
    public final name = [
        zh => "大人之玩物",
        en => "Kidult Hobby"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kidultstuff/",
            meta: [
                "id" => "638645542897317",
                "about" => "A Page for Kidults.\n電影、動漫、玩具、遊戲、潮物，大人喜歡的玩物資訊專頁。",
                "categories" => [
                    "Games/toys",
                    "Magazine"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kidultstuff/posts/2311905202238001"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

