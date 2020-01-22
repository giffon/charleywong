package charleywong.entities;

class Longwindeduncle implements Entity {
    public final id = "longwindeduncle";
    public final name = [
        zh => "囉嗦大叔"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/longwindeduncle/",
            meta: [
                "about" => "這是一遍融合人、大自然、生活態度與公義的樂土。",
                "categories" => [
                    "Personal blog"
                ],
                "id" => "1542347002756194"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/longwindeduncle/posts/2377066765950876"
        },
        {
            url: "https://www.facebook.com/longwindeduncle/posts/2434479810209571"
        }
    ];
}

