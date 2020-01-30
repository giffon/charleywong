package charleywong.entities;

class KiChanMakeup implements Entity {
    public final id = "kichanmakeup";
    public final name = [
        en => "Ki Chan Makeup"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kichanmakeup/",
            meta: [
                "id" => "376914829145001",
                "about" => "結婚事人生的大日子，我將竭誠為你製造不一樣美麗的你，提供不一樣貼心的新娘化妝服務，以客人心意為先。",
                "categories" => [
                    "Health/beauty"
                ],
                "tel" => "66913332"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kichanmakeup/photos/a.380760118760472/1260777447425397/"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding
    ];
}

