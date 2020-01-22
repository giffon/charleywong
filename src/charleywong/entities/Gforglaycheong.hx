package charleywong.entities;

class Gforglaycheong implements Entity {
    public final id = "gforglaycheong";
    public final name = [
        zh => "姬昌",
        en => "glaycheong photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/gforglaycheong/"
        },
        {
            url: "https://www.facebook.com/106014527610433/",
            meta: [
                "about" => "wish my original page can be recovered very soon",
                "categories" => [
                    "Photographer"
                ],
                "id" => "106014527610433"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/gforglaycheong/photos/a.1908782989169596/3691391964242014/"
        }
    ];
}

