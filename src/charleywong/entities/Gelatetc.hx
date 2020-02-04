package charleywong.entities;

class Gelatetc implements Entity {
    public final id = "gelatetc";
    public final name = [
        en => "gelat etc."
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://fb.me/gelatetc"
        },
        {
            url: "https://www.facebook.com/gelatetc/",
            meta: [
                "id" => "392883327717243",
                "about" => "Freshly handcrafted artisan gelato • coffee & more! 自家製意式手工雪糕�",
                "categories" => [
                    "Gelato shop",
                    "Cafe"
                ],
                "addr" => "1 Sai Yuen Lane, Shop 2 G/F, Artisan House, Sai Ying Pun",
                "area" => "Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/gelatetc/posts/995048750834028"
        },
        {
            url: "https://www.facebook.com/gelatetc/photos/a.488199154852326/878552082483696/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

