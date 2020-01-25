package charleywong.entities;

class MySkybluePhotography implements Entity {
    public final id = "myskyblue";
    public final name = [
        en => "MySkyblue Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.myskyblue.com"
        },
        {
            url: "https://www.facebook.com/myskyblue/",
            meta: [
                "id" => "121190604576563",
                "about" => "Hong Kong Photographer, providing exquisite wedding & other photography service.\nEmail: info@myskyblue.com",
                "categories" => [
                    "Photographer"
                ],
                "email" => "info@myskyblue.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/myskyblue/photos/a.695150613847223/3015922438436684/"
        }
    ];
}

