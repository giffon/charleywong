package charleywong.entities;

class CupofJoebycoffietics implements Entity {
    public final id = "cojcoffietics";
    public final name = [
        en => "Cup of Joe by coffietics"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/cojcoffietics/"
        },
        {
            url: "https://www.facebook.com/cojcoffietics/",
            meta: [
                "id" => "443214826421174",
                "about" => "guiding you to better coffee and health",
                "categories" => [
                    "Coffee shop"
                ],
                "addr" => "Shop C2A-C2B (Lift Lobby), G/F, China Insurance Group Building, 141 Des Voeux Road",
                "area" => "Central, Hong Kong",
                "email" => "askme@coffietics.com",
                "tel" => "27869711"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cojcoffietics/photos/a.467803230629000/587435535332435/"
        },
        {
            url: "https://www.facebook.com/cojcoffietics/photos/a.467803230629000/648924659183522/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

