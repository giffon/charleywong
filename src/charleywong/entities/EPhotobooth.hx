package charleywong.entities;

class EPhotobooth implements Entity {
    public final id = "hkephotobooth";
    public final name = [
        en => "E-Photobooth"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hkephotobooth/",
            meta: [
                "id" => "1392175991058384",
                "about" => "Your BEST choice of Photobooth Rental service in Hong Kong!",
                "categories" => [
                    "Event planner",
                    "Photographer",
                    "Event"
                ],
                "email" => "info@e-photobooth.com.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkephotobooth/posts/2492474761028496"
        }
    ];
    public final tags:Array<Tag> = [];
}

