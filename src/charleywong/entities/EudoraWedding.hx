package charleywong.entities;

class EudoraWedding implements Entity {
    public final id = "EudoraWedding";
    public final name = [
        en => "Eudora Wedding"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/EudoraWedding/",
            meta: [
                "id" => "113326802148535",
                "about" => "Eudora Wedding - 「Happiness Gift for You」",
                "categories" => [
                    "Photography & videography",
                    "Wedding planning service",
                    "Makeup artist"
                ],
                "addr" => "中環",
                "area" => "Hong Kong",
                "email" => "eudora_wedding@ymail.com",
                "tel" => "93164823"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/EudoraWedding/photos/a.130134233801125/1475398762607992/"
        }
    ];
    public final tags:Array<Tag> = [];
}

