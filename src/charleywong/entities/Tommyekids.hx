package charleywong.entities;

class Tommyekids implements Entity {
    public final id = "Tommyekids";
    public final name = [
        zh => "阮民安"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Tommyekids/",
            meta: [
                "categories" => [
                    "Public figure"
                ],
                "id" => "802472909813345"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Tommyekids/posts/2705085489552068"
        }
    ];
    public final tags:Array<Tag> = [
        music,
        publicfigure
    ];
}

