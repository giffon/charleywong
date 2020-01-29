package charleywong.entities;

class HeraFlowers implements Entity {
    public final id = "heraflowers.hk";
    public final name = [
        en => "Hera Flowers"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/heraflowers.hk/",
            meta: [
                "about" => "“The earth laughs in flowers.”― 我們相信花就是地球的笑聲,是日常生活的一部份,亦是一種生活態度。HERA Flowers希望透過花藝創作去分享喜悅和歡樂,為你的生活帶來一點小確幸！",
                "categories" => [
                    "Patio/garden",
                    "Florist"
                ],
                "email" => "heraflowershk@gmail.com",
                "tel" => "54008711",
                "id" => "296110154329516"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/heraflowers.hk/posts/479592742647922"
        },
        {
            url: "https://www.facebook.com/heraflowers.hk/photos/a.296249594315572/456061291667734/"
        }
    ];
    public final tags:Array<Tag> = [];
}

