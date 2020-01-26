package charleywong.entities;

class VERCPhotography implements Entity {
    public final id = "vercphotography";
    public final name = [
        en => "VERC Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.veronicabtriz.com"
        },
        {
            url: "https://www.facebook.com/vercphotography/",
            meta: [
                "id" => "487065644815613",
                "about" =>
                "Wedding & Portraits Photography\nbased in Hong Kong, available to hire worldwide\nwww.instagram.com/vercphotography...\n\n\nSee more",
                "categories" => [
                    "Photographer"
                ],
                "email" => "vercphotography@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/vercphotography/photos/a.986406054881567/1295591997296303/"
        }
    ];
}

