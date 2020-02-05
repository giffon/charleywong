package charleywong.entities;

class BattlefieldProducts implements Entity {
    public final id = "BattlefieldProducts";
    public final name = [
        zh => "陣地文宣產品"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/BattlefieldProducts/",
            meta: [
                "id" => "104998484335252",
                "categories" => [
                    "Art"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/BattlefieldProducts/photos/a.113416243493476/113414210160346/"
        },
        {
            url: "https://www.facebook.com/BattlefieldProducts/posts/125446532290447"
        }
    ];
    public final tags:Array<Tag> = [
        shop,
        clothing,
        accessories
    ];
}

