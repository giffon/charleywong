package charleywong.entities;

class FavillaCafe implements Entity {
    public final id = "favillacafehk";
    public final name = [
        en => "Favilla Cafe"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/favillacafehk/",
            meta: [
                "categories" => [
                    "Coffee shop",
                    "Florist",
                    "Restaurant"
                ],
                "email" => "cafe@favilla.com.hk",
                "tel" => "90143749",
                "id" => "1755609544738973"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/favillacafehk/photos/a.1761883390778255/2290806297885959/"
        },
        {
            url: "https://www.facebook.com/favillacafehk/photos/a.1761883390778255/2232791137020809/"
        },
        {
            url: "https://www.facebook.com/favillacafehk/photos/a.1761883390778255/2281287595504496/"
        }
    ];
    public final tags:Array<Tag> = [];
}

