package charleywong.entities;

class ThingsAtHongKong implements Entity {
    public final id = "ThingsAtHongKong";
    public final name = [
        zh => "香港地"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hkermedia.com"
        },
        {
            url: "https://www.facebook.com/ThingsAtHongKong/",
            meta: [
                "id" => "169166456593130",
                "categories" => [
                    "Media/news company"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ThingsAtHongKong/posts/1233403850169380"
        },
        {
            url: "https://www.facebook.com/ThingsAtHongKong/posts/1273188606190904"
        }
    ];
    public final tags:Array<Tag> = [];
}

