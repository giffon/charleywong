package charleywong.entities;

class Dadadepartment implements Entity {
    public final id = "dadadepartment";
    public final name = [
        zh => "大大百貨",
        en => "Da Da Department Store"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.dadadept.store"
        },
        {
            url: "https://www.facebook.com/dadadepartment/",
            meta: [
                "id" => "635827400212155",
                "about" => "大大百貨 DaDa Department Store\n~ 相信對大部份嘅香港人嚟講就一啲都唔會陌生",
                "categories" => [
                    "Shopping & retail"
                ],
                "email" => "dadadeptstore@gmail.com",
                "tel" => "21360258"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/dadadepartment/photos/a.687056491755912/823686544759572/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

