package charleywong.entities;

class ChiwaiChowfotography implements Entity {
    public final id = "chiwaichowfotography";
    public final name = [
        en => "chiwaiChow fotography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://chiwaichow.com"
        },
        {
            url: "https://www.facebook.com/chiwaichowfotography/",
            meta: [
                "id" => "172454859469507",
                "about" => "chiwaiChow fotography, Professional photography service, chiwaichow.com",
                "categories" => [
                    "Camera/photo"
                ],
                "email" => "info@chiwaichow.com",
                "tel" => "91760507"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/chiwaichowfotography/posts/2487541421294161"
        },
        {
            url: "https://www.facebook.com/chiwaichowfotography/posts/2216538581727781"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding,
    ];
}

