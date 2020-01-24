package charleywong.entities;

class Naildio implements Entity {
    public final id = "naildio";
    public final name = [
        en => "Naildio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/naildio/",
            meta: [
                "id" => "361277524616721",
                "categories" => [
                    "Nail salon"
                ],
                "addr" => "Room 1601 ,16/f, Solo Building, 41-43 Carnarvon Road, Tsim Sha Tsui",
                "area" => "Hong Kong",
                "tel" => "93532594"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/naildio/photos/a.372202726857534/597635700980901/"
        }
    ];
}

