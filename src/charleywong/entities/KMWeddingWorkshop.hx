package charleywong.entities;

class KMWeddingWorkshop implements Entity {
    public final id = "KMWeddingWorkshop";
    public final name = [
        en => "KM Wedding Workshop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/KMWeddingWorkshop/",
            meta: [
                "categories" => [
                    "Personal blog",
                    "Business service"
                ],
                "tel" => "61580790",
                "id" => "382279642515054"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/KMWeddingWorkshop/posts/639539593455723"
        }
    ];
    public final tags:Array<Tag> = [];
}

