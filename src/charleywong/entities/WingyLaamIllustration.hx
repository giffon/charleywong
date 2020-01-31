package charleywong.entities;

class WingyLaamIllustration implements Entity {
    public final id = "wingylaam";
    public final name = [
        en => "Wingy-Laam Illustration"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/wingylaam/",
            meta: [
                "categories" => [
                    "Artist",
                    "Author"
                ],
                "id" => "536265050074838"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/wingylaam/photos/a.586918918342784/898280880539918/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

