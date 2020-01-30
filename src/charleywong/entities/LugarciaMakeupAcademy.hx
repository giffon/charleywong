package charleywong.entities;

class LugarciaMakeupAcademy implements Entity {
    public final id = "lugarciamua";
    public final name = [
        en => "Lugarcia Makeup Academy"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.lugarciamua.com"
        },
        {
            url: "https://www.facebook.com/lugarciamua/",
            meta: [
                "id" => "1661021697496196",
                "about" => "Lugarcia Makeup Academy專業化妝師培訓，課程包括專業新娘化妝、髮型設計全科課程, 學生均有實習機會以及有機會成為Lugarcia的化妝師。\n\n個人服務: 設有化妝指導、專業化妝及髮型設計服務。",
                "categories" => [
                    "Makeup artist",
                    "Cosmetology school"
                ],
                "addr" => "Unit 1205, Westin Centre, 26 Hung To Road, Kwun Tong.",
                "area" => "Hong Kong",
                "email" => "lugarcia.hk@gmail.com",
                "tel" => "96334527"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lugarciamua/posts/2366354726962886"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        shop,
        wedding
    ];
}

