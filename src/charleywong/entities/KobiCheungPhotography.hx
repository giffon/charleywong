package charleywong.entities;

class KobiCheungPhotography implements Entity {
    public final id = "kobicheungphotography";
    public final name = [
        en => "Kobi Cheung Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.kobicheungphotography.com.hk"
        },
        {
            url: "https://www.facebook.com/kobicheungphotography/",
            meta: [
                "id" => "850782291608749",
                "about" =>
                "Photographer & designer of\nK&S Production.\nA female photographer for pre-wedding, wedding, pregnancy, baby, family, portrait, event and food, etc.",
                "categories" => [
                    "Camera/photo"
                ],
                "tel" => "60123013"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kobicheungphotography/posts/2761919277161698"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}

