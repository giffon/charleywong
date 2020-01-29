package charleywong.entities;

class Orchardfarmhk implements Entity {
    public final id = "orchardfarmhk";
    public final name = [
        en => "Orchardfarmhk",
        zh => "花果園"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.ocf.hk"
        },
        {
            url: "https://www.facebook.com/orchardfarmhk/",
            meta: [
                "id" => "2624425037782909",
                "about" => "創辦人英姐為社企共廚家作社區計劃的家廚，她和幾位年青人於2018年創立花果園，希望為大眾提供創新、安全、健康、美味、方便、價錢合理的自家製飲品及食品。",
                "categories" => [
                    "Health/beauty",
                    "Food and drink"
                ],
                "email" => "info@ocf.hk",
                "tel" => "92005921"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/orchardfarmhk/posts/3045423879016354"
        }
    ];
    public final tags:Array<Tag> = [];
}

