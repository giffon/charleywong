package charleywong.entities;

class Floralrendez implements Entity {
    public final id = "floral.rendez";
    public final name = [
        en => "Floral Rendezvous",
        zh => "花滙"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.floral-rendez.com"
        },
        {
            url: "https://www.facebook.com/floral.rendez/",
            meta: [
                "id" => "349813118508134",
                "about" => "splendid floral experience at friendly pricing",
                "categories" => [
                    "Florist"
                ],
                "addr" => "Unit K1, 9/F., King Win Factory Building, 65-67 King Yip Street, Kwun Tong",
                "area" => "Hong Kong",
                "email" => "floral.rendez@gmail.com",
                "tel" => "93394183"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/floral.rendez/posts/1401660929990009"
        },
        {
            url: "https://www.facebook.com/floral.rendez/photos/a.360456994110413/1396375027185266/"
        },
        {
            url: "https://www.facebook.com/floral.rendez/posts/1391680504321385"
        }
    ];
    public final tags:Array<Tag> = [];
}

