package charleywong.entities;

class MyCupofTeaBridal implements Entity {
    public final id = "mycupofteabridal";
    public final name = [
        en => "My Cup of Tea Bridal"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mycupofteabridal/",
            meta: [
                "about" =>
                "Premium authorized dealer for White One collection by St. Patrick ; Affordable designers\' gown rental ; Second hand gown reselling.",
                "categories" => [
                    "Bridal shop",
                    "Product/service"
                ],
                "addr" => "501,5/F,United Building,17-19 Jubilee Street",
                "area" => "Central, Hong Kong",
                "id" => "533489866752189"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mycupofteabridal/photos/a.535942109840298/1872410226193473/"
        }
    ];
    public final tags:Array<Tag> = [
        bridal
    ];
}

