package charleywong.entities;

class ZiZMakeupproduction implements Entity {
    public final id = "ZiZMakeupProduction";
    public final name = [
        en => "ZiZ Makeup production"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ZiZMakeupProduction/",
            meta: [
                "id" => "285804178472010",
                "about" => "化妝師，紋繡師\n承接各類型化妝服務及合作，亦提供半永久紋繡服務",
                "categories" => [
                    "Personal blog",
                    "Beauty, cosmetic & personal care"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ZiZMakeupProduction/posts/974692969583124"
        }
    ];
    public final tags:Array<Tag> = [];
}

