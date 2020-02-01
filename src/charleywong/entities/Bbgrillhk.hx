package charleywong.entities;

class Bbgrillhk implements Entity {
    public final id = "bbgrillhk";
    public final name = [
        zh => "串",
        en => "Grill"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/bbgrillhk/",
            meta: [
                "id" => "276854289848685",
                "categories" => [
                    "Barbecue restaurant"
                ],
                "addr" => "廣華街2-20號翠園2期地下10號鋪",
                "area" => "Mong Kok",
                "tel" => "68865886"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bbgrillhk/posts/403284273872352"
        },
        {
            url: "https://www.facebook.com/bbgrillhk/posts/499173694283409"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

