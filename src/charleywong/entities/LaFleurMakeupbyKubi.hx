package charleywong.entities;

class LaFleurMakeupbyKubi implements Entity {
    public final id = "lafleurmakeupbykubi";
    public final name = [
        en => "La Fleur Makeup by Kubi"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/lafleurmakeupbykubi/",
            meta: [
                "id" => "311318482412236",
                "about" =>
                "Simplicity is an art at La FleurMakeup, we engage the romance of nature in our designs and makeup, so you will look one-of-a-kind on your special day .",
                "categories" => [
                    "Makeup artist",
                    "Image consultant"
                ],
                "addr" => "觀塘鴻圖道58號金凱工業大廈920室",
                "area" => "Hong Kong",
                "email" => "lafleurbridalmakeup@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lafleurmakeupbykubi/posts/1161974644013278"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding
    ];
}

