package charleywong.entities;

class AndiesBullshit implements Entity {
    public final id = "AndiesBullshit";
    public final name = [
        zh => "語無論幟"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/AndiesBullshit/",
            meta: [
                "id" => "247584298697718",
                "about" => "語無論幟，全方位吹水自High專頁\n涉及各類型範疇，歡迎任意重溫",
                "categories" => [
                    "Personal blog"
                ],
                "email" => "wanchiandy@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/AndiesBullshit/photos/a.822923291163813/2369974296458697/"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

