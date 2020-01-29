package charleywong.entities;

class OlandaInternational implements Entity {
    public final id = "olandainternational";
    public final name = [
        en => "Olanda International"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.olanda-int.com"
        },
        {
            url: "https://www.facebook.com/olandainternational/",
            meta: [
                "id" => "1824860650894042",
                "about" => "奧蓮達國際是由一群關注人類身心健康的人所創立的健康產品貿易公司。我們致力推動草本植物於治療與保健用途上的普及化，以提倡回歸自然循環的生活模式。",
                "categories" => [
                    "Health & wellness website"
                ],
                "email" => "info@olanda-int.com",
                "tel" => "70713523"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/olandainternational/posts/2696255950421170"
        },
        {
            url: "https://www.facebook.com/olandainternational/posts/2663810750332357"
        },
        {
            url: "https://www.facebook.com/olandainternational/posts/2599045456808887"
        }
    ];
    public final tags:Array<Tag> = [];
}

