package charleywong.entities;

class GuruPangWorkshop implements Entity {
    public final id = "gurupangworkshop";
    public final name = [
        en => "Guru Pang Workshop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/gurupangworkshop/",
            meta: [
                "about" =>
                "A fusion of handmade jewelry and artwork inspired by travelling across the world.\n\nConsignment: www.noveltylane.com\n\nNo refund/exchange",
                "categories" => [
                    "Jewellery/watches"
                ],
                "email" => "seine128@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/gurupangworkshop/photos/a.1871060969843607/2507838919499139/"
        },
        {
            url: "https://www.facebook.com/gurupangworkshop/photos/a.1871060969843607/2505546446395053/"
        },
        {
            url: "https://www.facebook.com/gurupangworkshop/photos/a.1871060969843607/2493606464255718/"
        }
    ];
}

