package charleywong.entities;

class TszLungPhotography implements Entity {
    public final id = "TszLungPhotography";
    public final name = [
        en => "Tsz Lung Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.tszlung.com"
        },
        {
            url: "https://www.facebook.com/TszLungPhotography/",
            meta: [
                "id" => "188171107863307",
                "about" => "Photography & Cinematography Service in:\n\n1. Pre-Wedding (Overseas/Local)...\n\n\n\n\nSee more",
                "categories" => [
                    "Photographer"
                ],
                "email" => "mail@tszlung.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/TszLungPhotography/photos/a.585243201489427/3665474890132894/"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}

