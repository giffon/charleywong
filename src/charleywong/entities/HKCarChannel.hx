package charleywong.entities;

class HKCarChannel implements Entity {
    public final id = "HKCarChannel";
    public final name = [
        zh => "汽車台",
        en => "HK Car Channel"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hkcarchannel.com"
        },
        {
            url: "https://www.facebook.com/HKCarChannel/",
            meta: [
                "id" => "613890279077524",
                "categories" => [
                    "News and media website"
                ],
                "email" => "hkcarchannel@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HKCarChannel/posts/678675279265690"
        },
        {
            url: "https://www.facebook.com/HKCarChannel/posts/679536819179536"
        }
    ];
    public final tags:Array<Tag> = [
        media,
        transport
    ];
}

