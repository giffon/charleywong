package charleywong.entities;

class WeddingMCEgo implements Entity {
    public final id = "WeddingMcEgo";
    public final name = [
        en => "Wedding MC Ego"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://wow.esdlife.com/mcego"
        },
        {
            url: "https://www.facebook.com/WeddingMcEgo/",
            meta: [
                "id" => "104277483041508",
                "about" => "If you\'re just looking for standard, here\'s NOT for you",
                "categories" => [
                    "Artist",
                    "Wedding planning service"
                ],
                "email" => "egowan@gmail.com",
                "tel" => "62898338"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/WeddingMcEgo/posts/1668513656617875"
        }
    ];
    public final tags:Array<Tag> = [
        emcee,
        wedding
    ];
}

