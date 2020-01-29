package charleywong.entities;

class Wildshoeshk implements Entity {
    public final id = "wildshoeshk";
    public final name = [
        zh => "野鞋子"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/wildshoeshk/",
            meta: [
                "about" =>
                "Ig: wildshoeshk\n\nJust a life style in Hong Kong, other than the ordinary one. Sharing interesting things like hiking, watersport, travelling, music...",
                "categories" => [
                    "Local & travel website"
                ],
                "id" => "2127554253937298"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/wildshoeshk/posts/3491855394173837"
        },
        {
            url: "https://www.facebook.com/wildshoeshk/photos/a.2160655913960465/3548146335211409/"
        }
    ];
    public final tags:Array<Tag> = [];
}

