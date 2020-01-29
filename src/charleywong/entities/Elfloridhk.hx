package charleywong.entities;

class Elfloridhk implements Entity {
    public final id = "elfloridhk";
    public final name = [
        en => "EL FLORID"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/elfloridhk/",
            meta: [
                "id" => "366324970525699",
                "categories" => [
                    "Product/service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/elfloridhk/posts/689816694843190"
        }
    ];
    public final tags:Array<Tag> = [
        florist
    ];
}

