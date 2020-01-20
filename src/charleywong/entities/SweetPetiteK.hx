package charleywong.entities;

class SweetPetiteK implements Entity {
    public final id = "sweetpetitek";
    public final name = [
        en => "Sweet Petite K"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/sweetpetitek/",
            meta: [
                "about" => "All about beautiful cakes and sweet petite bakes.",
                "categories" => [
                    "Bakery"
                ],
                "addr" => "Shop 103, 1/F, The Mills, 45 Pak Tin Par Street",
                "area" => "Tsuen Wan, Hong Kong",
                "email" => "info@sweetpetitek.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sweetpetitek/posts/3047176368646397"
        }
    ];
}

