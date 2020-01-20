package charleywong.entities;

class VMade implements Entity {
    public final id = "bearvmade";
    public final name = [
        en => "V Made"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/bearvmade/",
            meta: [
                "about" => "回歸手作包的初心，因需求而製作。",
                "categories" => [
                    "Product/service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bearvmade/posts/518270478755145"
        },
        {
            url: "https://www.facebook.com/bearvmade/posts/490375501544643"
        }
    ];
}

