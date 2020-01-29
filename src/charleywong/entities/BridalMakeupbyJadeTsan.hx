package charleywong.entities;

class BridalMakeupbyJadeTsan implements Entity {
    public final id = "byjadetsan";
    public final name = [
        en => "Bridal Makeup by Jade Tsan"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/byjadetsan/",
            meta: [
                "id" => "530412377110869",
                "about" =>
                "Bridal Makeup Artist (Based in Hong Kong)\nWedding | Destination Wedding |\nEngagement shoot | Fashion | Event\n�For any job enquiry, pls direct inbox.",
                "categories" => [
                    "Makeup artist"
                ],
                "email" => "byjadetsan@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/byjadetsan/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/byjadetsan/posts/1405485239603574"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding,
    ];
}

