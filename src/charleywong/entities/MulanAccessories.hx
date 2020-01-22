package charleywong.entities;

class MulanAccessories implements Entity {
    public final id = "mulanaccessories";
    public final name = [
        en => "Mulan Accessories"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mulanaccessories/",
            meta: [
                "about" => "Handmade Accessories\nWhatsapp +852 65076000 for Enquires & Purchases",
                "categories" => [
                    "Accessories"
                ],
                "tel" => "65076000",
                "id" => "1617518081869449"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mulanaccessories/posts/2514367812184467"
        }
    ];
}

