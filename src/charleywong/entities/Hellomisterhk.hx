package charleywong.entities;

class Hellomisterhk implements Entity {
    public final id = "hellomisterhk";
    public final name = [
        en => "Hello Mister ミスター"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hellomisterhk/",
            meta: [
                "about" => "你喜歡自己嗎？\n奶茶喵與雞蛋星人切切的生活帳�",
                "categories" => [
                    "Artist",
                    "Art"
                ],
                "id" => "100617124740747"
            ]
        },
        {
            url: "https://www.instagram.com/hellomisterhk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hellomisterhk/photos/a.101231921345934/131035901698869/"
        },
        {
            url: "https://www.facebook.com/hellomisterhk/photos/a.101231921345934/120043006131492/"
        },
        {
            url: "https://www.facebook.com/hellomisterhk/photos/a.101231921345934/110624067073386/"
        }
    ];
}

