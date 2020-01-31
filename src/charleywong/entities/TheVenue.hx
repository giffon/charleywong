package charleywong.entities;

class TheVenue implements Entity {
    public final id = "kilungstreet";
    public final name = [
        en => "The Venue",
        zh => "基隆街五號"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://thevenue.hk"
        },
        {
            url: "https://www.facebook.com/kilungstreet/",
            meta: [
                "about" => "基隆街五號\n一千呎百變場地可供包場\n可時租、整個上午或晚上",
                "categories" => [
                    "Family style restaurant",
                    "Performance & event venue"
                ],
                "addr" => "基隆街5號",
                "area" => "Hong Kong",
                "email" => "reservation@thevenue.hk",
                "id" => "189770137881622"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kilungstreet/posts/1043026569222637"
        },
        {
            url: "https://www.facebook.com/kilungstreet/posts/1117282191797074"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

