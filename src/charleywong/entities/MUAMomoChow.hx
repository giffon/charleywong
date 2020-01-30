package charleywong.entities;

class MUAMomoChow implements Entity {
    public final id = "MUAMomoChow";
    public final name = [
        en => "Ms. Workshop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/MUAMomoChow/",
            meta: [
                "id" => "338094114662",
                "categories" => [
                    "Makeup artist",
                    "Product/service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MUAMomoChow/photos/a.10150743969754663/10157557785009663/"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding
    ];
}

