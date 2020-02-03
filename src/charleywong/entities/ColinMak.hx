package charleywong.entities;

class ColinMak implements Entity {
    public final id = "903colin";
    public final name = [
        en => "Colin Mak"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/903colin/",
            meta: [
                "id" => "273240516159608",
                "about" => "叱咤903主持\n星期一至五：深夜1-2 <廣東爆谷>\n星期六：黃昏5-7 <三號螺絲釘>...\n\n\nSee more",
                "categories" => [
                    "Public figure"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/colinmakkk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/903colin/posts/1486448478172133"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

