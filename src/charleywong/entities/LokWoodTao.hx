package charleywong.entities;

class LokWoodTao implements Entity {
    public final id = "LokWoodTao";
    public final name = [
        zh => "樂活道"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/LokWoodTao/",
            meta: [
                "id" => "102757043538152",
                "about" => "Live With Tone\n音樂就是生活的演繹\n與你一起百忙中找尋生活精彩之道",
                "categories" => [
                    "Media/news company"
                ],
                "tel" => "60717614"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/LokWoodTao/posts/736860696794447"
        },
        {
            url: "https://www.facebook.com/LokWoodTao/posts/731899970623853"
        },
        {
            url: "https://www.facebook.com/LokWoodTao/posts/663659027447948"
        }
    ];
    public final tags:Array<Tag> = [
        music,
        media
    ];
}

