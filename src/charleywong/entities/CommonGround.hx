package charleywong.entities;

class CommonGround implements Entity {
    public final id = "Commongroundhk";
    public final name = [
        en => "Common Ground"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Commongroundhk/",
            meta: [
                "about" => "Common Ground is a community project that started by Protest Design Company and Twins Kitchen.",
                "categories" => [
                    "Cafe"
                ],
                "addr" => "G/F, 19 Shing Wong St",
                "area" => "Central, Hong Kong",
                "email" => "info@twins-kitchen.com",
                "tel" => "28188318",
                "id" => "148162905333773"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Commongroundhk/photos/a.175123919304338/1359858317497553/"
        },
        {
            url: "https://www.facebook.com/Commongroundhk/photos/a.175123919304338/1318447798305272/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

