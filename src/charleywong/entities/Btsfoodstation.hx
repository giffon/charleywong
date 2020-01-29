package charleywong.entities;

class Btsfoodstation implements Entity {
    public final id = "bts.foodstation";
    public final name = [
        zh => "BTS 美食站"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/bts.foodstation/",
            meta: [
                "id" => "731800710519852",
                "categories" => [
                    "Bunsik restaurant"
                ],
                "addr" => "九龍城南角道11號地下",
                "area" => "Kowloon, Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bts.foodstation/posts/1024618151238105"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

