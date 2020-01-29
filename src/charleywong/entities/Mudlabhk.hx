package charleywong.entities;

class Mudlabhk implements Entity {
    public final id = "mudlabhk";
    public final name = [
        zh => "泥社",
        en => "MUDLAB"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mudlabhk/",
            meta: [
                "about" => "/ 一間對水泥鍾情的研究所\n/ 渴望將它融入自己的生活日常",
                "categories" => [
                    "Product/service",
                    "Arts and crafts shop",
                    "Designer"
                ],
                "addr" => "Room 5, 12/F, Hung Shing Industrial Bldg, 27 Tai Yip Street, Kwun Tong,Kowloon",
                "area" => "Hong Kong",
                "email" => "mudlabhk@gmail.com",
                "tel" => "94903069",
                "id" => "1354979847949402"
            ]
        },
        {
            url: "https://www.instagram.com/mudlabhk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mudlabhk/posts/2448895868557789"
        }
    ];
    public final tags:Array<Tag> = [];
}

