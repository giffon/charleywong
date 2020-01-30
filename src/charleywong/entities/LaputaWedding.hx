package charleywong.entities;

class LaputaWedding implements Entity {
    public final id = "hklaputawedding";
    public final name = [
        en => "Laputa Wedding"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hklaputawedding/",
            meta: [
                "id" => "394930697328667",
                "about" => "Since 2015.",
                "categories" => [
                    "Wedding planning service",
                    "Bridal shop"
                ],
                "addr" => "Unit 2101, New Venture Centre, 18 Lam Tin Street, Kwai Chung ,NT",
                "area" => "Hong Kong",
                "email" => "laputawedding@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hklaputawedding/photos/a.463178330503903/1351967168291677/"
        }
    ];
    public final tags:Array<Tag> = [
        bridal,
        makeup,
        photographer
    ];
}

