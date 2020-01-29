package charleywong.entities;

class Logicwesthk implements Entity {
    public final id = "logicwesthk";
    public final name = [
        zh => "邏輯西"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/logicwesthk/",
            meta: [
                "id" => "102070077868668",
                "categories" => [
                    "Editorial/Opinion"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/logicwesthk/posts/140782200664122"
        }
    ];
    public final tags:Array<Tag> = [];
}

