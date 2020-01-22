package charleywong.entities;

class ShibaTaroCafe implements Entity {
    public final id = "ShibaTaroCafe";
    public final name = [
        zh => "柴太郎咖啡店",
        en => "Shiba Taro Cafe"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ShibaTaroCafe/",
            meta: [
                "categories" => [
                    "Coffee shop",
                    "British restaurant"
                ],
                "addr" => "G/F, 11 See Cheung Street",
                "area" => "Sai Kung",
                "tel" => "94880623",
                "id" => "1933633330249751"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ShibaTaroCafe/posts/2517360015210410"
        },
        {
            url: "https://www.facebook.com/ShibaTaroCafe/photos/a.1964983090448108/2471670733112672/"
        }
    ];
}

