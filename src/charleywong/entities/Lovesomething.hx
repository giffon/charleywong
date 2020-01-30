package charleywong.entities;

class Lovesomething implements Entity {
    public final id = "lovesomething";
    public final name = [
        en => "love something"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/lovesomething/",
            meta: [
                "about" => "since 2009\n\n隨愛而為\nlove something, do something.",
                "categories" => [
                    "Cause"
                ],
                "email" => "lovesomethingart@gmail.com",
                "id" => "126561184024057"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lovesomething/posts/2869529386393876"
        },
        {
            url: "https://www.facebook.com/lovesomething/photos/a.872775649402603/3143240179022794/"
        },
        {
            url: "https://www.facebook.com/lovesomething/photos/a.872775649402603/3038805096132970/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

