package charleywong.entities;

class Minorbemajor implements Entity {
    public final id = "minorbemajor";
    public final name = [
        zh => "小市化大"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://minorbemajor.com"
        },
        {
            url: "https://www.facebook.com/minorbemajor/",
            meta: [
                "id" => "1892980717652276",
                "about" => "「小市化大」是一個空間，\n讓社會和本地品牌一同建立新的消費體驗，\n一個個以使命為本的項目，設計具意義的活動，\n以體驗取締購買，以消費投選你想看見的世界，\n讓本地品牌百花齊放。",
                "categories" => [
                    "Designer",
                    "Arts and entertainment",
                    "Event planner"
                ],
                "email" => "contact@minorbemajor.com"
            ]
        },
        {
            url: "https://www.instagram.com/minorbemajor/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/minorbemajor/photos/a.1929533820663632/2538869799730028/"
        },
        {
            url: "https://www.facebook.com/minorbemajor/posts/2498038087146533"
        },
        {
            url: "https://www.facebook.com/minorbemajor/posts/2489848147965527"
        }
    ];
}

