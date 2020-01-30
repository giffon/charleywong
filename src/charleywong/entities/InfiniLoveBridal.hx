package charleywong.entities;

class InfiniLoveBridal implements Entity {
    public final id = "infinilovebridal";
    public final name = [
        en => "Infini Love Bridal"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/infinilovebridal/"
        },
        {
            url: "https://www.facebook.com/infinilovebridal/",
            meta: [
                "id" => "1559455151042008",
                "about" =>
                "Infini Love Bridal is dedicated to delivering excellent rental and custom-made services of wedding gown & evening gown.\n\nBy Appointment ONLY",
                "categories" => [
                    "Bridal shop"
                ],
                "addr" => "Manning Industrial Building, 116-118 How Ming Street",
                "area" => "Kung Tong, Hong Kong",
                "email" => "info@infinilovebridal.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/infinilovebridal/photos/a.1560285590958964/2487792671541580/"
        }
    ];
    public final tags:Array<Tag> = [
        bridal
    ];
}

