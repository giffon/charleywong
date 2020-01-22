package charleywong.entities;

class Impressionproduction implements Entity {
    public final id = "impressionproduction";
    public final name = [
        en => "Impression Production Pre-Wedding Photo & Ceremony"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/impressionproduction/",
            meta: [
                "about" => "Photography Service in:\n- Pre-Wedding\n(Engagement Portrait)...\n\n\n\n\nSee more",
                "categories" => [
                    "Photographer",
                    "Wedding planning service",
                    "Product/service"
                ],
                "tel" => "98778350",
                "id" => "157410934323307"
            ]
        },
        {
            url: "https://www.instagram.com/impressionproduction/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/impressionproduction/posts/2694461340618241"
        }
    ];
}

