package charleywong.entities;

class CivilHumanRightsFront implements Entity {
    public final id = "CivilHumanRightsFront";
    public final name = [
        zh => "民間人權陣線",
        en => "Civil Human Rights Front"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.civilhrfront.org"
        },
        {
            url: "https://www.facebook.com/CivilHumanRightsFront/",
            meta: [
                "id" => "511608535553209",
                "about" => "民間人權陣線以推動民主、人權為基本原則；爭取儘快實現香港行政長官及各級議會議員由全面普選產生。\n\n同時爭取成立人權委員會，和推動制訂人權反歧視法例。",
                "categories" => [
                    "Interest"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CivilHumanRightsFront/photos/a.680202458693815/2390084077705636/"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}

