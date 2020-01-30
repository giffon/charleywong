package charleywong.entities;

class KLaFlorist implements Entity {
    public final id = "KLaFlorist";
    public final name = [
        en => "K La Florist"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/KLaFlorist/",
            meta: [
                "id" => "529959100547906",
                "about" => "// Flowers make your day !\n\n每個花藝品都是用心設計和製作的，\n希望收花的你能感到幸褔、快樂。",
                "categories" => [
                    "Product/service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/KLaFlorist/photos/a.551185368425279/1218136111730198/"
        }
    ];
    public final tags:Array<Tag> = [
        florist,
        wedding,
    ];
}

