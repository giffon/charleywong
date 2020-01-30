package charleywong.entities;

class KinkihouCilla implements Entity {
    public final id = "kinkihoumakeup";
    public final name = [
        en => "Kinkihou & Cilla"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kinkihoumakeup/",
            meta: [
                "id" => "226814704064314",
                "about" => "新娘化妝",
                "categories" => [
                    "Health/beauty"
                ],
                "email" => "kinkihou@hotmail.com",
                "tel" => "96000106"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kinkihoumakeup/photos/a.559668990778882/2636039463141814/"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding
    ];
}

