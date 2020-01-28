package charleywong.entities;

class ChiChi implements Entity {
    public final id = "chichiseafood";
    public final name = [
        en => "Chi Chi."
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/chichiseafood/",
            meta: [
                "id" => "679571202124682",
                "about" => "一位化妝師 。直率 , 執著 , 保留一點脾氣, 每天在囍悅間穿梭 。\nA Makeup Artist . Frank. Stubborn .Retain a little temper.",
                "categories" => [
                    "Just for fun"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/chi.chi_wu/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/chichiseafood/posts/2755779777837137"
        },
        {
            url: "https://www.facebook.com/chichiseafood/photos/a.681136148634854/2668179403263842/"
        },
        {
            url: "https://www.facebook.com/chichiseafood/photos/a.681136148634854/2542436655838118/"
        }
    ];
}

