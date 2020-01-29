package charleywong.entities;

class DecowingsWeddingProduction implements Entity {
    public final id = "Decowings";
    public final name = [
        en => "Decowings Wedding Production"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.decowings.com"
        },
        {
            url: "https://www.facebook.com/Decowings/",
            meta: [
                "id" => "485140921521377",
                "about" => "用心為你設計場地佈置、自家甜品 Candy Corner、度身訂造囍帖, 等等...帶給賓客眼前一亮的感覺 及 給一對新人一世美麗難忘的回憶。",
                "categories" => [
                    "Florist",
                    "Wedding planning service",
                    "Advertising/marketing"
                ],
                "email" => "info@decowings.com",
                "tel" => "36895311"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Decowings/posts/2606847609350687"
        }
    ];
    public final tags:Array<Tag> = [];
}

