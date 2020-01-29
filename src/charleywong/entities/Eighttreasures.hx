package charleywong.entities;

class Eighttreasures implements Entity {
    public final id = "eighttreasures";
    public final name = [
        zh => "八寶清湯腩"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/eighttreasures/",
            meta: [
                "id" => "498362043641689",
                "about" => "八寶清湯腩 Eight Treasures",
                "categories" => [
                    "Diner"
                ],
                "addr" => "香港電氣道124號榮華大厦地舖",
                "area" => "Hong Kong",
                "tel" => "28898366"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/eighttreasures/posts/1929879430489936"
        }
    ];
    public final tags:Array<Tag> = [];
}

