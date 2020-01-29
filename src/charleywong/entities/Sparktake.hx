package charleywong.entities;

class Sparktake implements Entity {
    public final id = "sparktake";
    public final name = [
        en => "Sparktake"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.sparktake.com"
        },
        {
            url: "https://www.facebook.com/sparktake/",
            meta: [
                "id" => "447881102221763",
                "about" => "你遺棄的書可能是其他人的寶藏。 Sparktake 為你提供驚喜及與書相遇的機會。",
                "categories" => [
                    "Book",
                    "Bookstore",
                    "App Page"
                ],
                "email" => "sparktake2016@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sparktake/photos/a.447901385553068/1092362927773574/"
        },
        {
            url: "https://www.facebook.com/sparktake/posts/1162581754085024"
        },
        {
            url: "https://www.facebook.com/sparktake/posts/1148877218788811"
        }
    ];
    public final tags:Array<Tag> = [];
}

