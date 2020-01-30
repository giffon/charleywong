package charleywong.entities;

class Jeremytammanho implements Entity {
    public final id = "jeremytammanho";
    public final name = [
        zh => "譚文豪",
        en => "Jeremy Tam"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/jeremytammanho/",
            meta: [
                "id" => "858421787553638",
                "about" => "立法會議員、民航機師及新手龍鳳爸爸，集風馬牛於一身的典型香港人。",
                "categories" => [
                    "Politician"
                ],
                "email" => "klejeremytam@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/jeremytammanho/photos/a.959449160784233/2422764301119371/"
        },
        {
            url: "https://www.facebook.com/jeremytammanho/posts/2464869246908876"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

