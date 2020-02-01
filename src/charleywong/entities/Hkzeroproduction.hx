package charleywong.entities;

class Hkzeroproduction implements Entity {
    public final id = "hkzeroproduction";
    public final name = [
        zh => "零製作"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.youtube.com/channel/UCFyQX_30ajCII-QHq1a3-_Q"
        },
        {
            url: "https://www.facebook.com/hkzeroproduction/",
            meta: [
                "id" => "734456046670571",
                "about" => "想講生活，講遊戲，講世界",
                "categories" => [
                    "Personal blog"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkzeroproduction/posts/2370800273036132"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

