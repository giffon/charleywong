package charleywong.entities;

class KatmadeWorkshop implements Entity {
    public final id = "katttmade";
    public final name = [
        en => "Katmade Workshop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/katttmade/",
            meta: [
                "about" => "Handmade Natural Pearl Accessories & Jewellery",
                "categories" => [
                    "Accessories",
                    "Gift shop",
                    "Jewellery/watches"
                ],
                "email" => "katttmade@gmail.com",
                "tel" => "65962044",
                "id" => "105814767512060"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/katttmade/photos/a.135809481179255/135809461179257/"
        }
    ];
}

