package charleywong.entities;

class TwoLipsBouquet implements Entity {
    public final id = "twolipsbouquet";
    public final name = [
        en => "Two Lips Bouquet"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/twolipsbouquet/",
            meta: [
                "id" => "329654347403211",
                "about" => "Meet Two Lips, your wedding bouquet specialist.\nWedding | Bouquet | Decors | Gifts",
                "categories" => [
                    "Florist"
                ],
                "email" => "twolipsbouquet@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/twolipsbouquet/posts/973424589692847"
        }
    ];
    public final tags:Array<Tag> = [
        florist,
        wedding
    ];
}

