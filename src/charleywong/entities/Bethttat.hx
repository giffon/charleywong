package charleywong.entities;

class Bethttat implements Entity {
    public final id = "bethttatoo";
    public final name = [
        en => "bethttat"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/bethttat/"
        },
        {
            url: "https://www.facebook.com/bethttatoo/",
            meta: [
                "id" => "2383545015069908",
                "categories" => [
                    "Artist"
                ],
                "email" => "bethttat@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bethttatoo/posts/2485568251534250"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        tattoo
    ];
}

