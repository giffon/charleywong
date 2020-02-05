package charleywong.entities;

class Forevercoating implements Entity {
    public final id = "forevercoating";
    public final name = [
        zh => "易鐘情-汽車美容鍍膜專門店"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.forevercoatinghk.com"
        },
        {
            url: "https://www.facebook.com/forevercoating/",
            meta: [
                "id" => "353665548360498",
                "about" => "我哋係一間主力專注做鍍膜嘅『汽車鍍膜專門店』！\n『平靚正』係客人俾我哋嘅真實評價，我哋感恩客人嘅支持！",
                "categories" => [
                    "Vehicle body shop"
                ],
                "addr" => "錦田市大江埔村41b",
                "area" => "Yuen Kong, Hong Kong",
                "tel" => "94404888"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/forevercoating/videos/773899596404658/"
        },
        {
            url: "https://www.facebook.com/forevercoating/photos/a.353705438356509/967315000328880/"
        },
        {
            url: "https://www.facebook.com/forevercoating/posts/964038633989850"
        }
    ];
    public final tags:Array<Tag> = [
        automobile
    ];
}

