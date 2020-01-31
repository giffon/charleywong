package charleywong.entities;

class WeddingMcRockson implements Entity {
    public final id = "WeddingMcRockson";
    public final name = [
        en => "Wedding MC Rockson"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/WeddingMcRockson/",
            meta: [
                "id" => "142107149893322",
                "categories" => [
                    "Public figure",
                    "Wedding planning service"
                ],
                "tel" => "90578944"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/WeddingMcRockson/posts/581740775929955"
        }
    ];
    public final tags:Array<Tag> = [
        emcee,
        wedding
    ];
}

