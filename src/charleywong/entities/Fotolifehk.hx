package charleywong.entities;

class Fotolifehk implements Entity {
    public final id = "fotolifehk";
    public final name = [
        zh => "偽術家",
        en => "Fotolife"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/fotolifehk/",
            meta: [
                "id" => "636263243224515",
                "about" => "影下相、講下時事咁啦~\n\nfacebook.com/fotolifehk/",
                "categories" => [
                    "Art",
                    "Personal blog",
                    "Photography & videography"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/fotolifehk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/fotolifehk/posts/1260999050750928"
        }
    ];
}

