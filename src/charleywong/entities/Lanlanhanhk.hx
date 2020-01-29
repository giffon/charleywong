package charleywong.entities;

class Lanlanhanhk implements Entity {
    public final id = "lanlanhanhk";
    public final name = [
        zh => "懶懶閒"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/lanlanhanhk/",
            meta: [
                "categories" => [
                    "Artist"
                ],
                "id" => "896695670487307"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lanlanhanhk/photos/a.910927395730801/1492571210899747/"
        },
        {
            url: "https://www.facebook.com/lanlanhanhk/photos/a.910927395730801/1396789173811285/"
        }
    ];
    public final tags:Array<Tag> = [];
}

