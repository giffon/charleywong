package charleywong.entities;

class Repurposehk implements Entity {
    public final id = "repurpose.hk";
    public final name = [
        zh => "集棄場"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/repurpose.hk/",
            meta: [
                "categories" => [
                    "Home improvement",
                    "Product/service"
                ],
                "addr" => "FT U 1/F Kai Tak FTY BLDG STAGE 1, 101 King Kuk Street",
                "area" => "San Po Kong",
                "email" => "repurpose@dne.com.hk",
                "tel" => "61283314"
            ]
        },
        {
            url: "https://www.instagram.com/campingcarhk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/repurpose.hk/photos/a.1353983588021047/2313886625364067/"
        },
        {
            url: "https://www.facebook.com/repurpose.hk/photos/a.1353983588021047/2294503807302349/"
        },
        {
            url: "https://www.facebook.com/repurpose.hk/photos/a.1403997049686367/2204561329629931/"
        }
    ];
}

