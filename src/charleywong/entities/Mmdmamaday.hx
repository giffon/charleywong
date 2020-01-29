package charleywong.entities;

class Mmdmamaday implements Entity {
    public final id = "mmd.mamaday";
    public final name = [
        zh => "嘛嘛地",
        en => "Mamaday"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mmd.mamaday/",
            meta: [
                "about" => "So Far So Good; 比上不足，比下有餘。\n\n（HongKong - Causeway Bay）...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Breakfast & brunch restaurant",
                    "Cafe"
                ],
                "addr" => "松山區南京東路四段75巷14弄1號",
                "area" => "Taipei, Taiwan",
                "email" => "mmd.mamaday@gmail.com",
                "id" => "1917484021860362"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mmd.mamaday/photos/a.1927933927482038/2519109385031153/"
        },
        {
            url: "https://www.facebook.com/mmd.mamaday/photos/a.1927933927482038/2498104850464940/"
        }
    ];
    public final tags:Array<Tag> = [];
}

