package charleywong.entities;

class Muchakuchahk implements Entity {
    public final id = "muchakucha.hk";
    public final name = [
        zh => "無茶苦茶",
        en => "Muchakucha"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/muchakucha.hk/",
            meta: [
                "about" => "抱着無茶苦茶胡來亂試的勇氣而創設的手作品牌。\n研究出原創的黏土擠花手藝，\n利用蛋糕常見的擠花技巧，製成各種飾物，\n讓曾經只能在蛋糕上出現的甜美，完美重現於你的每天。",
                "categories" => [
                    "Accessories"
                ],
                "addr" => "Room 1306, 13/F, Pang Kwong Building, 59 Hung To Road, Kwun Tong",
                "area" => "Kowloon, Hong Kong",
                "email" => "muchakucha.hk@gmail.com",
                "id" => "652238318275103"
            ]
        },
        {
            url: "https://www.instagram.com/muchakucha_hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/muchakucha.hk/posts/1409824809183113"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

