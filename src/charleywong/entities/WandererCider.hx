package charleywong.entities;

class WandererCider implements Entity {
    public final id = "WandererCider";
    public final name = [
        en => "Wanderer Cider"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.WandererCider.com"
        },
        {
            url: "https://www.facebook.com/WandererCider/",
            meta: [
                "id" => "715673545276533",
                "about" => "Launched in 2014 by HongKongers. Wanderer Cider is a specialist on craft ciders. Contact us to get more info!",
                "categories" => [
                    "Food and drinks company"
                ],
                "email" => "enquiry@wanderercider.com",
                "tel" => "64726325"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/WandererCider/posts/1451584078352139"
        },
        {
            url: "https://www.facebook.com/WandererCider/photos/a.715681401942414/1407733799403834/"
        },
        {
            url: "https://www.facebook.com/WandererCider/photos/a.715681401942414/1260959127414636/"
        }
    ];
    public final tags:Array<Tag> = [];
}

