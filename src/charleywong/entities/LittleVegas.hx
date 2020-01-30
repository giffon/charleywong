package charleywong.entities;

class LittleVegas implements Entity {
    public final id = "littlevegashk";
    public final name = [
        en => "Little Vegas"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/littlevegashk/",
            meta: [
                "id" => "727415680629667",
                "about" => "Vegas-themed restaurant in Causeway Bay.",
                "categories" => [
                    "American restaurant",
                    "New American restaurant",
                    "Asian fusion restaurant"
                ],
                "addr" => "銅鑼灣耀華街3號百樂中心25樓",
                "area" => "Hong Kong",
                "email" => "info@little-vegas.com",
                "tel" => "26222369"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/littlevegashk/photos/a.747830231921545/2509997242371493/"
        },
        {
            url: "https://www.facebook.com/littlevegashk/photos/a.747830231921545/2524659037571980/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

