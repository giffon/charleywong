package charleywong.entities;

class FUJIHANA implements Entity {
    public final id = "hkfujihana";
    public final name = [
        en => "FUJIHANA"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hkfujihana/",
            meta: [
                "about" => "Doing What You Love\nHandmade|Design\n�寄賣...\n\n\n\nSee more",
                "categories" => [
                    "Product/service"
                ],
                "id" => "423296297875249"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkfujihana/posts/1038558916348981"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

