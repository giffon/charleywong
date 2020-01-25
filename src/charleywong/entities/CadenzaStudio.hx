package charleywong.entities;

class CadenzaStudio implements Entity {
    public final id = "CadenzaStudio";
    public final name = [
        en => "Cadenza Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.cadenzastudio.com.hk"
        },
        {
            url: "https://www.facebook.com/CadenzaStudio/",
            meta: [
                "id" => "284333268305053",
                "about" => "For price list & enquiry please email to <info@cadenzastudio.com.hk> or Facebook message us",
                "categories" => [
                    "Photographer",
                    "Wedding planning service",
                    "Camera/photo"
                ],
                "email" => "info@cadenzastudio.com.hk",
                "tel" => "97420550"
            ]
        },
        {
            url: "https://www.instagram.com/cadenzastudiohk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CadenzaStudio/posts/3532802360124778"
        }
    ];
}

