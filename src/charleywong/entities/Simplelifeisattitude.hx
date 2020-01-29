package charleywong.entities;

class Simplelifeisattitude implements Entity {
    public final id = "simplelifeisattitude";
    public final name = [
        en => "Simple life",
        zh => "簡單生活"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/simplelifeisattitude/",
            meta: [
                "id" => "180165958751406",
                "about" => "簡單生活是一種生活態度 生活就是要簡單",
                "categories" => [
                    "Community"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/simplelifeisattitude/posts/2114284532006196"
        }
    ];
    public final tags:Array<Tag> = [];
}

