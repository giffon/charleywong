package charleywong.entities;

class LeoBall implements Entity {
    public final id = "leoball727";
    public final name = [
        en => "Leo Ball"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/leoball727/",
            meta: [
                "id" => "8100113319",
                "about" => "人生就是不停地 #靜過太空",
                "categories" => [
                    "Motivational speaker"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/leoball/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/leoball727/photos/a.10151673504643320/10157363660708320/"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

