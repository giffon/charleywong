package charleywong.entities;

class ThisWay implements Entity {
    public final id = "thiswayhk";
    public final name = [
        en => "This Way"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.thiswayhk.com"
        },
        {
            url: "https://www.facebook.com/thiswayhk/",
            meta: [
                "id" => "264682643656000",
                "about" => "多國護膚化妝品代購\n用心、親力親爲做好每一件事",
                "categories" => [
                    "Beauty, cosmetic & personal care",
                    "Beauty supply shop",
                    "Cosmetics shop"
                ],
                "email" => "hkthisway@gmail.com",
                "tel" => "56057369"
            ]
        },
        {
            url: "https://www.instagram.com/thisway_hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/thiswayhk/photos/a.264707773653487/1414516558672597/"
        }
    ];
}

