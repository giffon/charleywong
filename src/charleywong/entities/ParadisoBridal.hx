package charleywong.entities;

class ParadisoBridal implements Entity {
    public final id = "paradisobridal";
    public final name = [
        en => "Paradiso Bridal"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/paradisobridal/",
            meta: [
                "about" =>
                "Bridal boutique with brands from the US, Europe and Australia. Sales and rental services available. Contact at 3902 3535 for appointment.",
                "categories" => [
                    "Bridal shop"
                ],
                "addr" => "Suite B, 2/F, Yun Tat Commercial Bldg, 70-74 Wuhu St.",
                "area" => "Kowloon, Hong Kong",
                "email" => "info@paradisobridal.com",
                "tel" => "39023535",
                "id" => "179025512191810"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/paradisobridal/photos/a.246946032066424/2614982395262764/"
        }
    ];
    public final tags:Array<Tag> = [];
}

