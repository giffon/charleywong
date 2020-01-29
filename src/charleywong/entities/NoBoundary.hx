package charleywong.entities;

class NoBoundary implements Entity {
    public final id = "no.boundary.hk";
    public final name = [
        en => "No Boundary"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/no.boundary.hk/"
        },
        {
            url: "https://www.facebook.com/no.boundary.hk/",
            meta: [
                "about" => "\"No Boundary\" － 「無邊」。",
                "categories" => [
                    "Restaurant"
                ],
                "addr" => "9 Haven Street, Causeway Bay",
                "area" => "Causeway Bay",
                "email" => "no.boundary.hongkong@gmail.com",
                "tel" => "22199488",
                "id" => "300858437397512"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/no.boundary.hk/posts/631187244364628"
        },
        {
            url: "https://www.facebook.com/no.boundary.hk/videos/961956054187264/"
        },
        {
            url: "https://www.facebook.com/no.boundary.hk/posts/580367462779940"
        }
    ];
    public final tags:Array<Tag> = [];
}

