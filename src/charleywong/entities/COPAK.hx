package charleywong.entities;

class COPAK implements Entity {
    public final id = "hkcopak";
    public final name = [
        en => "COPAK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/hkcopak/"
        },
        {
            url: "https://www.facebook.com/hkcopak/",
            meta: [
                "about" => "把情感刻劃在每道旋律\n告白於所重視之人",
                "categories" => [
                    "Musician/band"
                ],
                "email" => "hkcopakofficial@gmail.com",
                "tel" => "67463066",
                "id" => "173930496689338"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkcopak/photos/a.189637381785316/510439579705093/"
        }
    ];
    public final tags:Array<Tag> = [];
}

