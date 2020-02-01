package charleywong.entities;

class Whysofreshhk implements Entity {
    public final id = "whysofreshhk";
    public final name = [
        en => "Why So Fresh",
        zh => "進口食材"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.whysofresh.com"
        },
        {
            url: "https://www.facebook.com/whysofreshhk/",
            meta: [
                "id" => "195108834450190",
                "about" => "小店Why So Fresh\n令你食得更美味，變得更健康\n今天起遠離黑心肉、激素豬、抗生素雞等劣質食材\nWhy So Fresh 為你提供各地優質食材\nGood Food,Good Life",
                "categories" => [
                    "Butcher\'s shop",
                    "Health Food Shop"
                ],
                "addr" => "筲箕灣工廠街28號德褔樓3號地舖",
                "area" => "Shau Kei Wan, Hong Kong",
                "email" => "whysofreshhk@gmail.com",
                "tel" => "67336828"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/whysofreshhk/photos/a.271098306851242/481243789170025/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

