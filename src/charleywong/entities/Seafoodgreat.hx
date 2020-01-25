package charleywong.entities;

class Seafoodgreat implements Entity {
    public final id = "seafoodgreat";
    public final name = [
        en => "Seafood Great"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/seafoodgreat/",
            meta: [
                "id" => "104442463453566",
                "about" => "Seafood Great 為你提供一站式海鮮方案，讓你安坐家中，就享受到美味海鮮送到俯上。",
                "categories" => [
                    "Local business"
                ],
                "email" => "seafoodgreat@yahoo.com",
                "tel" => "61114713"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/seafoodgreat/posts/392313864666423"
        },
        {
            url: "https://www.facebook.com/seafoodgreat/posts/445332102697932"
        },
        {
            url: "https://www.facebook.com/seafoodgreat/posts/486815338549608"
        }
    ];
}

