package charleywong.entities;

class TuckshopbySocialClub implements Entity {
    public final id = "tuckshopbysocialclub";
    public final name = [
        en => "Tuckshop by Social Club"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/tuckshopbysocialclub/",
            meta: [
                "categories" => [
                    "Coffee shop"
                ],
                "addr" => "Shop 4-7, No.158A Connaught Road West",
                "area" => "Sai Ying Pun",
                "email" => "info@socialclub.hk",
                "tel" => "97454966"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tuckshopbysocialclub/photos/a.1827492177544261/2249967255296749/"
        },
        {
            url: "https://www.facebook.com/tuckshopbysocialclub/photos/a.1827492177544261/2238447983115343/"
        },
        {
            url: "https://www.facebook.com/tuckshopbysocialclub/photos/a.1827492177544261/2129786810648128/"
        }
    ];
}

