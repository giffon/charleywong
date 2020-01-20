package charleywong.entities;

class RELz implements Entity {
    public final id = "relzplay";
    public final name = [
        en => "RE:Lz"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/relzplay/",
            meta: [
                "about" => "Since 2014\n作品由小皮気獨力製作及設計，由零開始。\n...\n\n\n\nSee more",
                "categories" => [
                    "Graphic designer",
                    "Product/service"
                ],
                "addr" => "葵昌路1號",
                "area" => "Hong Kong",
                "email" => "relzplayhk@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/relzplay/photos/a.1410103365919440/2411227555807011/"
        }
    ];
}

