package charleywong.entities;

class Icsoccer implements Entity {
    public final id = "icsoccer";
    public final name = [
        zh => "四格好波 (IC足球部)"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://icsoccerhk.com"
        },
        {
            url: "https://www.facebook.com/icsoccer/",
            meta: [
                "id" => "115128138512913",
                "about" => "IC足球部 Facebook Official Fan page",
                "categories" => [
                    "Sports equipment shop"
                ],
                "addr" => "旺角彌敦道608號 W PLAZA 1樓145-146舖 (商務隔離)",
                "area" => "Hong Kong",
                "email" => "cfai_wong@yahoo.com.hk",
                "tel" => "67001251"
            ]
        },
        {
            url: "https://www.instagram.com/ICSOCCERHK/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/icsoccer/posts/3735332366492454"
        }
    ];
}

