package charleywong.entities;

class Entrancetsuenwan implements Entity {
    public final id = "entrance.tsuenwan";
    public final name = [
        zh => "入麵",
        en => "entrance"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/entrance.tsuenwan/",
            meta: [
                "id" => "1549938858560059",
                "about" => "自家製台式拉麵在\"入麵\"",
                "categories" => [
                    "Local business"
                ],
                "addr" => "Shop 151, 1/F, Kings Wing Plaza 1, 3 On Kwan St",
                "area" => "Hong Kong",
                "email" => "entranceshekmun@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/entrance.tsuenwan/photos/a.1568943113326300/2501157193438216/"
        },
        {
            url: "https://www.facebook.com/entrance.tsuenwan/posts/2487943451426257"
        },
        {
            url: "https://www.facebook.com/entrance.tsuenwan/photos/a.1568943113326300/2476152399272029/"
        }
    ];
}

