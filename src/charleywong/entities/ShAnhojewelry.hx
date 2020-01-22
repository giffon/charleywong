package charleywong.entities;

class ShAnhojewelry implements Entity {
    public final id = "shanhoojewellery";
    public final name = [
        en => "ShAnho jewelry"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/shanhoojewellery/",
            meta: [
                "about" => "Handmade Jewelry . Beautiful Objects . Wearable art .\n.\nWe offer custom made design.\n.\nFree shipping over hkd$600 order",
                "categories" => [
                    "Art",
                    "Product/service"
                ],
                "id" => "143757898976113"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/shanhoojewellery/photos/a.217343561617546/2817887251563151/"
        },
        {
            url: "https://www.facebook.com/shanhoojewellery/photos/a.217343561617546/2612124492139429/"
        }
    ];
}

