package charleywong.entities;

class Sleepingpen implements Entity {
    public final id = "sleepingpen";
    public final name = [
        zh => "睡睡筆",
        en => "Sleeping Pen"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/sleepingpen/",
            meta: [
                "about" => "有一日：發現屋企啲筆攤喺度終日無所事事，決定要佢哋勞動",
                "categories" => [
                    "Artist"
                ],
                "email" => "sleepingpenart@gmail.com",
                "id" => "1842017982699975"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sleepingpen/posts/2503266466575120"
        },
        {
            url: "https://www.facebook.com/sleepingpen/posts/2484753415093092"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

