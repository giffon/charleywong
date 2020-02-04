package charleywong.entities;

class SeoulmateCafe implements Entity {
    public final id = "seoulmatecafe";
    public final name = [
        en => "Seoulmate Cafe"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/seoulmatecafe/",
            meta: [
                "id" => "529475840488045",
                "categories" => [
                    "Asian fusion restaurant",
                    "Coffee shop"
                ],
                "addr" => "4/F, Kyoto Plaza, 491-499 Lockhart Road, Causeway Bay",
                "area" => "Hong Kong",
                "tel" => "21046788"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/seoulmatecafe/posts/2190459467722999"
        },
        {
            url: "https://www.facebook.com/seoulmatecafe/photos/a.1127858263983130/2168997806535832/"
        },
        {
            url: "https://www.facebook.com/seoulmatecafe/posts/2146643668771246"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

