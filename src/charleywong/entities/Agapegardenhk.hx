package charleywong.entities;

class Agapegardenhk implements Entity {
    public final id = "Agapegardenhk";
    public final name = [
        en => "Agape Garden",
        zh => "膳心小館"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Agapegardenhk/",
            meta: [
                "id" => "1970276573232191",
                "categories" => [
                    "Kitchen/Cooking",
                    "Retail company"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Agapegardenhk/posts/2487703058156204"
        },
        {
            url: "https://www.facebook.com/Agapegardenhk/photos/a.1981677598758755/2444386565821187/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

