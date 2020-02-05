package charleywong.entities;

class Tonghingpharmacy implements Entity {
    public final id = "tonghingpharmacy";
    public final name = [
        zh => "東興大藥房"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/tonghingpharmacy/",
            meta: [
                "id" => "103493494512440",
                "about" => "社區藥房",
                "categories" => [
                    "Pharmacy/chemists",
                    "Product/service"
                ],
                "addr" => "筲箕灣愛禮街2號愛蝶灣商場55號舖",
                "area" => "Hong Kong",
                "email" => "tonghingpharmacy@gmail.com",
                "tel" => "25672388"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tonghingpharmacy/photos/a.108004800727976/108004597394663/"
        },
        {
            url: "https://www.facebook.com/tonghingpharmacy/photos/a.108004800727976/113383693523420/"
        },
        {
            url: "https://www.facebook.com/tonghingpharmacy/posts/113389960189460"
        }
    ];
    public final tags:Array<Tag> = [
        pharmacy
    ];
}

