package charleywong.entities;

class GOOUT implements Entity {
    public final id = "hkgoout";
    public final name = [
        en => "GO OUT"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hkgoout/",
            meta: [
                "about" => "Outdoor lifestyle in Hong Kong.",
                "categories" => [
                    "Recreation & sport website"
                ],
                "email" => "info@goout.hk",
                "id" => "105056088086"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkgoout/photos/a.391209893086/10156587745303087/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

