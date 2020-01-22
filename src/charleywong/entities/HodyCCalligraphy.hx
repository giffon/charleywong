package charleywong.entities;

class HodyCCalligraphy implements Entity {
    public final id = "hodycalli";
    public final name = [
        en => "HodyC Calligraphy"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hodycalli/",
            meta: [
                "about" => "Calligraphy, painting, illumination, western calligraphy.",
                "categories" => [
                    "Product/service"
                ],
                "email" => "hodycalli@gmail.com",
                "id" => "2347521308793052"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hodycalli/videos/478847669516601/"
        }
    ];
}

