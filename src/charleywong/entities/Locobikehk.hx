package charleywong.entities;

class Locobikehk implements Entity {
    public final id = "locobikehk";
    public final name = [
        en => "LocoBike",
        zh => "樂區踩"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://loco.hk"
        },
        {
            url: "https://www.facebook.com/locobikehk/",
            meta: [
                "id" => "341588266256540",
                "about" => "LocoBike可能係全港最貼地，最多優惠嘅共享單車平台！\n隨時隨地，想踩就踩，只需$3就可以踩足半個鐘，一個社區共享單車平台，讓你重拾踩單車嘅樂趣，隨時仲有踩車優惠券送畀你。",
                "categories" => [
                    "Sport & recreation",
                    "Bike hire",
                    "Transportation service"
                ],
                "email" => "hello@loco.hk",
                "tel" => "52121706"
            ]
        },
        {
            url: "https://www.instagram.com/loco.bike/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/locobikehk/posts/814385935643435"
        },
        {
            url: "https://www.facebook.com/locobikehk/posts/812626112486084"
        }
    ];
    public final tags:Array<Tag> = [];
}

