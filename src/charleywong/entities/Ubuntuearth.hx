package charleywong.entities;

class Ubuntuearth implements Entity {
    public final id = "ubuntuearth";
    public final name = [
        en => "Ubuntu"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ubuntuearth/",
            meta: [
                "about" => "Instagram : u.b.u.n.t.u",
                "categories" => [
                    "Website",
                    "Art"
                ],
                "id" => "2237691786450085"
            ]
        },
        {
            url: "https://www.instagram.com/u.b.u.n.t.u/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.instagram.com/p/B5h4MDPAD2l/"
        }
    ];
}

