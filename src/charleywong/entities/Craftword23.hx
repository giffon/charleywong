package charleywong.entities;

class Craftword23 implements Entity {
    public final id = "craftword23";
    public final name = [
        zh => "字．作業"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/craftword23/",
            meta: [
                "about" => "文字本來就是最美麗的藝術品",
                "categories" => [
                    "Artist"
                ],
                "id" => "410709619117793"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/craftword23/photos/a.495242207331200/1161569984031749/"
        },
        {
            url: "https://www.facebook.com/craftword23/photos/a.495242207331200/1157340414454706/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

