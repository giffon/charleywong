package charleywong.entities;

class MakeawishMakeupStudio implements Entity {
    public final id = "makeawishmakeupstudio";
    public final name = [
        en => "Make a wish Makeup Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/makeawishmakeupstudio/",
            meta: [
                "id" => "303526036474193",
                "about" => "Make a wish Makeup Studio 提供新娘化妝 (高清噴槍)，廣告雜誌，Pre-wedding 化妝，姊妹及家人化妝，派對化妝，個人/新娘化妝班。",
                "categories" => [
                    "Health/beauty",
                    "Makeup artist"
                ],
                "addr" => "沙田火炭坳背灣街53-55號美高工業大廈4樓35室",
                "area" => "Hong Kong",
                "email" => "info@makeawishmakeup.com",
                "tel" => "61919115"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/makeawishmakeupstudio/posts/1400377450122374"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        wedding
    ];
}

