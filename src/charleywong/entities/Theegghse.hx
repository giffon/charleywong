package charleywong.entities;

class Theegghse implements Entity {
    public final id = "theegghse";
    public final name = [
        zh => "雞蛋屋",
        en => "The Egg House"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/theegghse/",
            meta: [
                "id" => "104715201037515",
                "categories" => [
                    "Cafe"
                ],
                "addr" => "Flat A, 2/F, Ko\'s House , 577 Nathan Road ,",
                "area" => "Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/theegghse/photos/a.106625307513171/122256365950065/"
        },
        {
            url: "https://www.facebook.com/theegghse/posts/120216649487370"
        },
        {
            url: "https://www.facebook.com/theegghse/posts/114991840009851"
        }
    ];
}

