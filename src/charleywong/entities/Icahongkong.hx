package charleywong.entities;

class Icahongkong implements Entity {
    public final id = "icahongkong";
    public final name = [
        zh => "獨立評論人協會"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/icahongkong/",
            meta: [
                "categories" => [
                    "Non-profit organisation"
                ],
                "id" => "646730532061049"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/icahongkong/posts/2483719851695432"
        },
        {
            url: "https://www.facebook.com/icahongkong/posts/2515613315172752"
        }
    ];
    public final tags:Array<Tag> = [];
}

