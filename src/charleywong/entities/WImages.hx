package charleywong.entities;

class WImages implements Entity {
    public final id = "doubleuimage";
    public final name = [
        en => "W Images"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/doubleuimage/",
            meta: [
                "id" => "322076371953186",
                "about" => "這是我的底片世界.",
                "categories" => [
                    "Just for fun"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/doubleuimage/posts/553734355454052"
        }
    ];
    public final tags:Array<Tag> = [];
}

