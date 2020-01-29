package charleywong.entities;

class Ffdhk implements Entity {
    public final id = "ffdhk";
    public final name = [
        zh => "正品室內設計工程公司",
        en => "Fine Formation Design Hong Kong"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.ffdhk.com"
        },
        {
            url: "https://www.facebook.com/ffdhk/",
            meta: [
                "id" => "111551485660728",
                "about" => "正品室內設計工程公司\nFINE FORMATION DESIGN HONG KONG\n政府註冊小型工程承辨商\nhttp://www.ffdhk.com",
                "categories" => [
                    "Engineering service",
                    "Consultation agency",
                    "Interior design studio"
                ],
                "addr" => "柴灣新業街5號王子工業大廈309室",
                "area" => "Hong Kong",
                "email" => "contact@ffdhk.com",
                "tel" => "39918512"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ffdhk/posts/1690782927737568"
        },
        {
            url: "https://www.facebook.com/ffdhk/posts/1643107492505112"
        },
        {
            url: "https://www.facebook.com/ffdhk/posts/1535109129971616"
        }
    ];
    public final tags:Array<Tag> = [];
}

