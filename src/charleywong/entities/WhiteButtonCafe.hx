package charleywong.entities;

class WhiteButtonCafe implements Entity {
    public final id = "whitebuttoncafe";
    public final name = [
        en => "White Button Cafe"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/whitebuttoncafe/"
        },
        {
            url: "https://www.facebook.com/whitebuttoncafe/",
            meta: [
                "id" => "139630342800785",
                "categories" => [
                    "Coffee shop",
                    "Cupcake Shop",
                    "Diner"
                ],
                "addr" => "Ashely Road No.23-25 12/F",
                "area" => "Tsim Sha Tsui"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/whitebuttoncafe/photos/a.812096455554167/2231514833612315/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

