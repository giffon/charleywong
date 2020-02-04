package charleywong.entities;

class Ttdumplings implements Entity {
    public final id = "ttdumplings";
    public final name = [
        zh => "三一餃子",
        en => "Trinity Dumpling"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ttdumplings/",
            meta: [
                "id" => "148489895814449",
                "categories" => [
                    "Asian fusion restaurant",
                    "Chinese restaurant"
                ],
                "addr" => "No. 7, Li Yuen Street West, Central",
                "area" => "Hong Kong",
                "email" => "ttdumplings@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ttdumplings/posts/422971165032986"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

