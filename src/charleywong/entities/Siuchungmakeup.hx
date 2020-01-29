package charleywong.entities;

class Siuchungmakeup implements Entity {
    public final id = "siuchungmakeup";
    public final name = [
        zh => "SiuChung Makeup (小蟲）"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/siuchungmakeup/",
            meta: [
                "id" => "484434631581611",
                "about" => "Makeup Artist and Hair Stylist\n\n“Style to fit differential ” is the core value of SiuChung’s makeup philosophy.",
                "categories" => [
                    "Makeup artist"
                ],
                "addr" => "Jaffe Road",
                "area" => "Causeway Bay",
                "email" => "angelsiuchung@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/siuchungmakeup/photos/a.489963251028749/3390210054337373/"
        }
    ];
    public final tags:Array<Tag> = [];
}

