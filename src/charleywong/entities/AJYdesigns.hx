package charleywong.entities;

class AJYdesigns implements Entity {
    public final id = "AJYdesigns";
    public final name = [
        en => "AJYdesigns"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/AJYdesigns/",
            meta: [
                "about" =>
                "Leather and fabric bags designed and handmade in Hong Kong. Each piece is made once and never repeated.\nCustom orders are welcome!",
                "categories" => [
                    "Bags/luggage"
                ],
                "id" => "119003761592710"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/AJYdesigns/photos/a.137204929772593/1382944841865256/"
        }
    ];
    public final tags:Array<Tag> = [];
}

