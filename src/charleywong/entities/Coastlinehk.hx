package charleywong.entities;

class Coastlinehk implements Entity {
    public final id = "Coastline.hk";
    public final name = [
        zh => "海雲台"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Coastline.hk/",
            meta: [
                "categories" => [
                    "Korean restaurant"
                ],
                "addr" => "G/F, 45 San Hing Street, Cheung Chau",
                "area" => "Cheung Chau, Hong Kong",
                "tel" => "29818330"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Coastline.hk/photos/a.908332726166145/1016692598663490/"
        }
    ];
}

