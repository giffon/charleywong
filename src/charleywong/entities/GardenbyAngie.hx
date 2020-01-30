package charleywong.entities;

class GardenbyAngie implements Entity {
    public final id = "gardenbyangie";
    public final name = [
        en => "Garden by Angie"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/gardenbyangie/",
            meta: [
                "about" => "教學連結：https://www.facebook.com/gardenbyangie/posts/340666333207551",
                "categories" => [
                    "Nursery & garden centre"
                ],
                "id" => "293940147880170"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/gardenbyangie/photos/a.294284681179050/511127732828076/"
        }
    ];
    public final tags:Array<Tag> = [
        florist
    ];
}

