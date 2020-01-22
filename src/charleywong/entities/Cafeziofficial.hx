package charleywong.entities;

class Cafeziofficial implements Entity {
    public final id = "cafezi.official";
    public final name = [
        zh => "梔子",
        en => "Zi"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/cafezi.official/",
            meta: [
                "categories" => [
                    "Coffee shop",
                    "Pub/Bar"
                ],
                "addr" => "山林道 8 號",
                "area" => "Tsim Sha Tsui",
                "email" => "cafezi.official@gmail.com",
                "tel" => "27781628",
                "id" => "792592420892430"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cafezi.official/photos/a.808403265978012/1452725234879142/"
        }
    ];
}

