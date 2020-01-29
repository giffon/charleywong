package charleywong.entities;

class AprilsMakeupWellness implements Entity {
    public final id = "aprilfan.makeup";
    public final name = [
        en => "April\'s Makeup & Wellness"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/aprilfan.makeup/",
            meta: [
                "id" => "562909937104109",
                "about" => "Tailor made makeup service\nFashion /Commercial /Bridal /Beauty /Event\nWellness & Health info sharing",
                "categories" => [
                    "Community"
                ],
                "email" => "aprilfan@gmail.com",
                "tel" => "93885964"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/aprilfan.makeup/photos/a.590853510976418/2560774063984343/"
        }
    ];
    public final tags:Array<Tag> = [];
}

