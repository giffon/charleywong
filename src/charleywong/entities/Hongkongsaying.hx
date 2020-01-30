package charleywong.entities;

class Hongkongsaying implements Entity {
    public final id = "hongkongsaying";
    public final name = [
        zh => "香港人有say"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hongkongsaying/",
            meta: [
                "id" => "1752588091683119",
                "about" => "我係香港人，我有Say !!",
                "categories" => [
                    "Writer",
                    "Politician"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hongkongsaying/posts/2480047895603798"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

