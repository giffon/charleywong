package charleywong.entities;

class BeautysaurOrganics implements Entity {
    public final id = "Beautysaur.organics";
    public final name = [
        en => "Beautysaur Organics"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://beautysaur.com/"
        },
        {
            url: "https://www.facebook.com/Beautysaur.organics/",
            meta: [
                "about" =>
                "旗艦店地址：九龍尖沙咀 K11 Musea, 2/F, 210B (尖沙咀/尖東站J2出口)\n營業時間 10:00 - 22:00\n\n分店地址：香港銅鑼灣 Fashion Walk, 1/F, Kiosk2 (銅鑼灣站E出口)\n營業時間 12:00 - 21:00",
                "categories" => [
                    "Cosmetics shop",
                    "Beauty supply shop"
                ],
                "addr" => "Shop210B, 2/F, K11 Musea, 18 Salisbury Road, Tsim Sha Tsui",
                "area" => "Hong Kong",
                "email" => "info@beautysaur.com",
                "tel" => "94329430"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Beautysaur.organics/posts/2633427996738372"
        },
        {
            url: "https://www.facebook.com/Beautysaur.organics/photos/a.1265010603580125/2600828986664940"
        }
    ];
}

