package charleywong.entities;

class Leungwaigo implements Entity {
    public final id = "leungwaigo";
    public final name = [
        en => "Waigo",
        zh => "偉伯"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/leungwaigo/",
            meta: [
                "id" => "1466775243370501",
                "categories" => [
                    "Producer"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/leungwaigo/posts/2584285581619456"
        }
    ];
    public final tags:Array<Tag> = [];
}

