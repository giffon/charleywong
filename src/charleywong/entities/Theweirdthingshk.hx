package charleywong.entities;

class Theweirdthingshk implements Entity {
    public final id = "the.weird.things.hk";
    public final name = [
        en => "The.Weird.Things"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/the.weird.things.hk/",
            meta: [
                "categories" => [
                    "Art"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/the.weird.things.hk/photos/a.464905784034200/711065732751536/"
        },
        {
            url: "https://www.facebook.com/the.weird.things.hk/posts/701473327044110"
        }
    ];
}

