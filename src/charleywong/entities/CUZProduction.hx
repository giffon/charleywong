package charleywong.entities;

class CUZProduction implements Entity {
    public final id = "cuzproduction";
    public final name = [
        en => "CUZ Production"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.cuzproduction.com"
        },
        {
            url: "https://www.facebook.com/cuzproduction/",
            meta: [
                "id" => "117096766044",
                "about" => "Cuz Production is a boutique event management company mainly caters bespoke wedding event services since 2009.",
                "categories" => [
                    "Wedding planning service",
                    "Photography & videography"
                ],
                "addr" => "15/F., Yeung Iu Chi Comm. Bldg., 460-462 Jaffe Rd., Causeway Bay",
                "area" => "Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cuzproduction/photos/a.10151678105441045/10156825938176045/"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}

