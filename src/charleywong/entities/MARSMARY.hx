package charleywong.entities;

class MARSMARY implements Entity {
    public final id = "MARSMARYYY";
    public final name = [
        en => "MARS MARY"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/MARSMARYYY/",
            meta: [
                "about" => "a girl from Mars\nan illustrator.",
                "categories" => [
                    "Artist"
                ],
                "id" => "228306900633881"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MARSMARYYY/photos/a.466840653447170/1728169580647598/"
        },
        {
            url: "https://www.facebook.com/MARSMARYYY/photos/a.466840653447170/1616342185163672/"
        }
    ];
    public final tags:Array<Tag> = [];
}

