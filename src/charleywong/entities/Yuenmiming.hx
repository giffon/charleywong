package charleywong.entities;

class Yuenmiming implements Entity {
    public final id = "yuenmiming";
    public final name = [
        zh => "袁彌明",
        en => "Erica Yuen"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.mimingmart.com"
        },
        {
            url: "https://www.facebook.com/yuenmiming/",
            meta: [
                "id" => "183940768442517",
                "about" => "Mi Ming Mart 彌明生活百貨創辦人",
                "categories" => [
                    "Entrepreneur"
                ],
                "email" => "erica@mimingmart.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/yuenmiming/posts/1204766439693273"
        },
        {
            url: "https://www.facebook.com/yuenmiming/posts/1250969725072944"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

