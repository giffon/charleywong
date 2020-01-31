package charleywong.entities;

class DrAndrewCHIU implements Entity {
    public final id = "Dr.AndrewCHIU";
    public final name = [
        zh => "趙家賢",
        en => "Dr. Andrew CHIU"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://andrewchiu.hk"
        },
        {
            url: "https://www.facebook.com/Dr.AndrewCHIU/",
            meta: [
                "id" => "100556368100857",
                "about" => "趙家賢 Dr. Andrew - 資深認可調解員 及 仲裁員。東區區議會副主席，07年當選太古城西民選議員。現為民主動力召集人，公共專業聯盟執委，民主黨東區黨團召集人 及 香港認可調解員學會主席。",
                "categories" => [
                    "Politician"
                ],
                "email" => "office@andrewchiu.hk",
                "tel" => "25356720"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Dr.AndrewCHIU/posts/121420536014440"
        },
        {
            url: "https://www.facebook.com/Dr.AndrewCHIU/videos/856435204812451/"
        },
        {
            url: "https://www.facebook.com/Dr.AndrewCHIU/photos/a.100590578097436/101198994703261/"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

