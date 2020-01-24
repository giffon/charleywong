package charleywong.entities;

class KOLBazaar implements Entity {
    public final id = "753211198412476";
    public final name = [
        en => "KOL Bazaar"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/kolbazaar/"
        },
        {
            url: "https://www.facebook.com/753211198412476/",
            meta: [
                "id" => "753211198412476",
                "categories" => [
                    "Cosmetics shop",
                    "Shopping service"
                ],
                "addr" => "觀塘開源道60號駱駝漆大廈3期10樓G室",
                "area" => "Hong Kong",
                "email" => "kolbazaar@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/753211198412476/photos/a.756539548079641/921014301632164/"
        },
        {
            url: "https://www.facebook.com/753211198412476/photos/a.900336547033273/966277240439203/"
        }
    ];
}

