package charleywong.entities;

class WeddingHashtagProduction implements Entity {
    public final id = "wedding.hashtag";
    public final name = [
        en => "Wedding Hashtag Production"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.weddinghashtag.hk"
        },
        {
            url: "https://www.facebook.com/wedding.hashtag/",
            meta: [
                "id" => "320022341797284",
                "about" => "Start your once-in-a-lifetime experience with a bespoke #WEDDING HASHTAG",
                "categories" => [
                    "Wedding planning service",
                    "Bridal shop",
                    "Wedding venue"
                ],
                "addr" => "Unit 13 of De Cue, 1/F Hewlett Centre, NOS 52-54, Hoi Yuen Road, Kwun Tong",
                "area" => "Hong Kong",
                "email" => "info@weddinghashtag.hk",
                "tel" => "21092399"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/wedding.hashtag/photos/a.357507221382129/709300739536107/"
        }
    ];
}

