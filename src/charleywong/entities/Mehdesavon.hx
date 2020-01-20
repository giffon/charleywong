package charleywong.entities;

class Mehdesavon implements Entity {
    public final id = "mehdesavon";
    public final name = [
        zh => "皂咩",
        en => "meh de savon"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mehdesavon/",
            meta: [
                "about" => "Hong Kong Artisan Soap Maker\n香港製造 • Made in Hong Kong\n冷製手工皂 Cold Process Soap...\n\n\nSee more",
                "categories" => [
                    "Health/beauty",
                    "Skincare service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mehdesavon/posts/471531330377497"
        },
        {
            url: "https://www.facebook.com/mehdesavon/photos/a.134026920794608/474257056771591/"
        }
    ];
}

