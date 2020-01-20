package charleywong.entities;

class MADEGREY implements Entity {
    public final id = "MADEGREY";
    public final name = [
        en => "MADEGREY"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/MADEGREY/",
            meta: [
                "about" => "Fashion Accessories",
                "categories" => [
                    "Jewellery/watches",
                    "Shopping & retail"
                ],
                "email" => "info@madegrey.com",
                "tel" => "60996755"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MADEGREY/photos/a.911061805615447/2315997055121908/"
        }
    ];
}

