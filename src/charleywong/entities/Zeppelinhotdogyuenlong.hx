package charleywong.entities;

class Zeppelinhotdogyuenlong implements Entity {
    public final id = "Zeppelinhotdogyuenlong";
    public final name = [
        en => "Zeppelinhotdog yuenlong"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Zeppelinhotdogyuenlong/",
            meta: [
                "id" => "103253804543501",
                "about" => "小食/熱狗",
                "categories" => [
                    "Hot Dog Joint"
                ],
                "tel" => "52828720"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Zeppelinhotdogyuenlong/posts/112917970243751"
        },
        {
            url: "https://www.facebook.com/Zeppelinhotdogyuenlong/photos/a.105428964325985/115157043353177/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

