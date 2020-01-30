package charleywong.entities;

class Mixuphk implements Entity {
    public final id = "mixup.hk";
    public final name = [
        zh => "混醬坊"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mixup.hk/",
            meta: [
                "id" => "1786723734973548",
                "categories" => [
                    "Restaurant"
                ],
                "addr" => "深水埗長沙灣道84號B舖",
                "area" => "Hong Kong",
                "tel" => "96059712"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mixup.hk/posts/2295654900747093"
        },
        {
            url: "https://www.facebook.com/mixup.hk/posts/2325391147773468"
        },
        {
            url: "https://www.facebook.com/mixup.hk/posts/2194947010817883"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

