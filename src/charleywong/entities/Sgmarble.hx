package charleywong.entities;

class Sgmarble implements Entity {
    public final id = "sgmarble";
    public final name = [
        en => "SG Marble"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.sgmarblehk.com"
        },
        {
            url: "https://www.facebook.com/sgmarble/",
            meta: [
                "id" => "1572244136430440",
                "categories" => [
                    "Product/service"
                ],
                "email" => "hi@sgmarblehk.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sgmarble/posts/2429088437412668"
        },
        {
            url: "https://www.facebook.com/sgmarble/posts/2529375897383921"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

