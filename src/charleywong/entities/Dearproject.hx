package charleywong.entities;

class Dearproject implements Entity {
    public final id = "wearedearproject";
    public final name = [
        en => "dear project"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/wearedearproject/",
            meta: [
                "categories" => [
                    "Visual arts"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/wearedearproject/photos/a.343245646362748/371939856826660/"
        },
        {
            url: "https://www.facebook.com/wearedearproject/photos/a.343245646362748/346162769404369/"
        }
    ];
}

