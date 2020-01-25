package charleywong.entities;

class Ufleuriste implements Entity {
    public final id = "ufleuriste";
    public final name = [
        en => "Ufleuriste"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ufleuriste/",
            meta: [
                "id" => "354748061207957",
                "about" => "Opening Hours: Mon to Sun, 11.00am to 8.00pm",
                "categories" => [
                    "Florist",
                    "Retail company",
                    "Wedding planning service"
                ],
                "email" => "info@ufleuriste.com.hk",
                "tel" => "96257392"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ufleuriste/posts/3064076423608427"
        }
    ];
}

