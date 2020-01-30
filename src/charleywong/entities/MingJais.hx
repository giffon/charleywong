package charleywong.entities;

class MingJais implements Entity {
    public final id = "MingJais";
    public final name = [
        zh => "Ming仔"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.youtube.com/user/mingjai14"
        },
        {
            url: "https://www.facebook.com/MingJais/",
            meta: [
                "id" => "131904663487609",
                "about" =>
                "For business/interview inquiry: mingjai@freemanproduction.com.hk\nYoutube: mingjai14\nInstagram: mingjai14\ntumblr: mingjai14\nWeibo: 銘仔Mingjai",
                "categories" => [
                    "Film director",
                    "Blogger",
                    "Actor"
                ],
                "email" => "mingjai@freemanproduction.com.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MingJais/photos/a.592395227438548/2941537279190986/"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

