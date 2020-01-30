package charleywong.entities;

class Hongkonghandmade implements Entity {
    public final id = "hongkonghandmade";
    public final name = [
        zh => "香港手作"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hongkonghandmade.com"
        },
        {
            url: "https://www.facebook.com/hongkonghandmade/",
            meta: [
                "id" => "268285296661584",
                "about" => "hongkonghandmade.com 香港手作平台，寄賣概念店@D2 Place, 網購, 工作坊,市集,文章，助您買到心愛手作物。",
                "categories" => [
                    "Website"
                ],
                "email" => "info@hkhandmade.com",
                "tel" => "34285237"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hongkonghandmade/posts/1319662001523903"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

