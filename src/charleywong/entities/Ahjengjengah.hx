package charleywong.entities;

class Ahjengjengah implements Entity {
    public final id = "ahjengjengah";
    public final name = [
        zh => "阿正",
        en => "Ahjeng"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ahjengjengah/",
            meta: [
                "id" => "314399946148466",
                "categories" => [
                    "Personal blog"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ahjengjengah/posts/358798241708636"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

