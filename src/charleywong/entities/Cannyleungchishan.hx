package charleywong.entities;

class Cannyleungchishan implements Entity {
    public final id = "cannyleungchishan";
    public final name = [
        zh => "梁芷珊",
        en => "Canny Leung"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.ocheflab.com"
        },
        {
            url: "https://www.facebook.com/cannyleungchishan/",
            meta: [
                "id" => "468189090692",
                "about" => "IG: Leungchishancanny",
                "categories" => [
                    "Author",
                    "Video creator",
                    "Food consultant"
                ],
                "tel" => "90111661"
            ]
        },
        {
            url: "https://www.instagram.com/cannyleungchishan/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cannyleungchishan/posts/10162598648985693"
        },
        {
            url: "https://www.facebook.com/cannyleungchishan/posts/10162185284640693"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

