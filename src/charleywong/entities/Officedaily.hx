package charleywong.entities;

class Officedaily implements Entity {
    public final id = "officedaily";
    public final name = [
        zh => "辦公室日報"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/officedaily/",
            meta: [
                "id" => "226239094489586",
                "about" => "搵工同搵另一半都係一樣，勉強冇幸福。",
                "categories" => [
                    "Blogger"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/officedailyhk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/officedaily/photos/a.267877603659068/824209621359194/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

