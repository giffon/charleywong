package charleywong.entities;

class ReunionGuitarWorkshopLtd implements Entity {
    public final id = "ReunionGuitarWorkshop";
    public final name = [
        en => "Reunion Guitar Workshop Ltd"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ReunionGuitarWorkshop/",
            meta: [
                "id" => "123106257755594",
                "about" =>
                "提供結他/Bass 專業維修保養服務，如有查詢請直接 Message 留下電話或 whatsapp 91645151。\nAddress: \"Reservation Only\" Rm E2, 4/F, BLK B, Tontex Industrial Building,2-4 Sheung He",
                "categories" => [
                    "Musical instrument",
                    "Musical instrument store",
                    "Professional service"
                ],
                "addr" => "\"Reservation Only\" Rm E2, 4/F, BLK B, Tontex Industrial Building,2-4 Sheung Hei Street, San Po Kong",
                "area" => "Kowloon, Hong Kong",
                "email" => "rgw.repair@gmail.com",
                "tel" => "91645151"
            ]
        },
        {
            url: "https://www.instagram.com/rgw.repair/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ReunionGuitarWorkshop/photos/a.532574910142058/2453152478084282/"
        }
    ];
    public final tags:Array<Tag> = [
        music,
        shop
    ];
}

