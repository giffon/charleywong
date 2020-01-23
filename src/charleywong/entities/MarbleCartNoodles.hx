package charleywong.entities;

class MarbleCartNoodles implements Entity {
    public final id = "Marble.Cart.Noodles";
    public final name = [
        zh => "孖寶車仔麵"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Marble.Cart.Noodles/",
            meta: [
                "id" => "113065092100872",
                "categories" => [
                    "Noodle house"
                ],
                "tel" => "34273498"
            ]
        },
        {
            url: "https://www.instagram.com/marble.cart.noodles/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Marble.Cart.Noodles/photos/a.966081780132528/3113425862064765/"
        },
        {
            url: "https://www.facebook.com/Marble.Cart.Noodles/photos/a.966081780132528/3218137764926907/"
        }
    ];
}

