package charleywong.entities;

class Issyoukenmen implements Entity {
    public final id = "issyoukenmen";
    public final name = [
        zh => "一生懸麵"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/issyoukenmen/",
            meta: [
                "categories" => [
                    "Ramen Restaurant",
                    "Diner"
                ],
                "addr" => "九龍灣店：牛頭角道3號得寶商場地下121號鋪\n\n旺角店：通菜街73號地鋪",
                "area" => "Hong Kong",
                "tel" => "37058766",
                "id" => "653054634885127"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/issyoukenmen/photos/a.663810267142897/1287110428146208/"
        },
        {
            url: "https://www.facebook.com/issyoukenmen/posts/1268311310026120"
        }
    ];
    public final tags:Array<Tag> = [];
}

