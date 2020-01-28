package charleywong.entities;

class ZeppelinHotDog implements Entity {
    public final id = "zeppelinhotdog";
    public final name = [
        en => "Zeppelin Hot Dog"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.zeppelinhotdog.com"
        },
        {
            url: "https://www.facebook.com/zeppelinhotdog/",
            meta: [
                "id" => "319775824852635",
                "about" => "A Hong Kong Local Brand.",
                "categories" => [
                    "Hot Dog Joint",
                    "Food stall",
                    "Fast food restaurant"
                ],
                "addr" => "B7, G/F, WAH SHING BUILDING, BLOCK B, 80-84 HAU TEI SQUARE, TSUEN WAN",
                "area" => "Tsuen Wan, Hong Kong",
                "email" => "zeppelinhotdog@gmail.com",
                "tel" => "98522901"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/zeppelinhotdog/photos/a.463339490496267/1460471424116397/"
        },
        {
            url: "https://www.facebook.com/zeppelinhotdog/posts/1415507011946172"
        }
    ];
}

