package charleywong.entities;

class DocaHandbook implements Entity {
    public final id = "docahandbook";
    public final name = [
        en => "Doca Handbook"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/docahandbook/",
            meta: [
                "categories" => [
                    "Bags/luggage"
                ],
                "email" => "handbooklab@hotmail.com",
                "tel" => "55085966"
            ]
        },
        {
            url: "https://www.instagram.com/doca_handbook/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/docahandbook/photos/a.1522573324509929/2088042354629687/"
        },
        {
            url: "https://www.facebook.com/docahandbook/posts/1899946783439246"
        }
    ];
}

