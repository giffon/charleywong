package charleywong.entities;

class AMEIMakeup implements Entity {
    public final id = "ameimakeup";
    public final name = [
        en => "AMEI Makeup"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ameimakeup/",
            meta: [
                "id" => "687095578042770",
                "about" =>
                "Provide professional makeup and hair styling service in your precious moment.\nBanquets, events, graduations, dating and any precious moment~",
                "categories" => [
                    "Community"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ameimakeup/photos/a.730030107082650/2539863269432649/"
        }
    ];
    public final tags:Array<Tag> = [];
}

