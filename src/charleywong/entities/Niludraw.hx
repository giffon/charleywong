package charleywong.entities;

class Niludraw implements Entity {
    public final id = "niludraw";
    public final name = [
        zh => "啤咩",
        en => "Bear"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/niludraw/",
            meta: [
                "id" => "1820916958197807",
                "about" => "可以吃的話，不會縮。\n這是啤咩Bear的話。",
                "categories" => [
                    "Artist"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/niludraw/photos/a.1823913717898131/2521650581457771/"
        },
        {
            url: "https://www.facebook.com/niludraw/videos/2325933337484592/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

