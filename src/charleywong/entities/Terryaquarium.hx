package charleywong.entities;

class Terryaquarium implements Entity {
    public final id = "terryaquarium";
    public final name = [
        zh => "泰利水族"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/terryaquarium/",
            meta: [
                "id" => "955329377946928",
                "categories" => [
                    "Pet breeder",
                    "Aquatic pet shop"
                ],
                "addr" => "Hong Kong",
                "area" => "Kwai Chung"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/terryaquarium/posts/1946774002135789"
        },
        {
            url: "https://www.facebook.com/terryaquarium/posts/1844557582357432"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

