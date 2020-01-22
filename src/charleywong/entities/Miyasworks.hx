package charleywong.entities;

class Miyasworks implements Entity {
    public final id = "miyasworks";
    public final name = [
        en => "Miya\'s Works - Natural Soap"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/miyasworks/",
            meta: [
                "about" => "Online Store:\nwww.miyasworks.com\n...\n\n\n\n\n\n\n\nSee more",
                "categories" => [
                    "Health/beauty",
                    "Skincare service"
                ],
                "email" => "info@miyasworks.com",
                "id" => "430784957121540"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/miyasworks/photos/a.468333486700020/1269475013252526"
        }
    ];
}

