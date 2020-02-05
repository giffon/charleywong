package charleywong.entities;

class EcoCar implements Entity {
    public final id = "ecohomehkauto";
    public final name = [
        en => "EcoCar"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ecohomehkauto/",
            meta: [
                "id" => "122036271733606",
                "about" => "優質上門汽車美容服務",
                "categories" => [
                    "Vehicle detailing service"
                ],
                "addr" => "Cameron Road",
                "area" => "Hong Kong",
                "tel" => "93375285"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ecohomehkauto/posts/399865687283995"
        },
        {
            url: "https://www.facebook.com/ecohomehkauto/posts/525038784766684"
        },
        {
            url: "https://www.facebook.com/ecohomehkauto/posts/486817085255521"
        }
    ];
    public final tags:Array<Tag> = [
        automobile
    ];
}

