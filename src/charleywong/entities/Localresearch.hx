package charleywong.entities;

class Localresearch implements Entity {
    public final id = "localresearch";
    public final name = [
        zh => "本土研究社",
        en => "Liber Research Community"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://liber-research.com"
        },
        {
            url: "https://www.instagram.com/liberresearch/"
        },
        {
            url: "https://www.facebook.com/localresearch/",
            meta: [
                "id" => "244689185627162",
                "about" => "開拓各種自主獨立的本土研究，推動民間知識生產與普及，請捐款支持本土研究社的工作。\n\n撐起民間研究 Support Us：...\n\n\n\nSee more",
                "categories" => [
                    "Non-governmental organisation (NGO)"
                ],
                "addr" => "2/F, Foo Tak Building, 365 Hennessy Road, Wan Chai",
                "area" => "Hong Kong",
                "email" => "info@liber-research.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/localresearch/photos/a.326590167437063/2684267651669291/"
        },
        {
            url: "https://www.facebook.com/localresearch/photos/a.326590167437063/2509948135767911/"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}

