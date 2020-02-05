package charleywong.entities;

class Leemanplate implements Entity {
    public final id = "leemanplate";
    public final name = [
        en => "The Leemanplate",
        zh => "利萬車牌"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.leemanplate.com"
        },
        {
            url: "https://www.facebook.com/leemanplate/",
            meta: [
                "id" => "109545425746213",
                "about" => "100% HANDMADE HONGKONG NUMBER PLATE\n\n本店為香港唯一榮獲英國LCGI高等資格認證和擁有香港運輸處頒發證明書之制作商。 研發並使用獨家及目前最先進之數碼技術。",
                "categories" => [
                    "Car service",
                    "Cars",
                    "DVLA"
                ],
                "addr" => "香港銅鑼灣大坑浣紗街1號地下",
                "area" => "Tai Hang",
                "email" => "info@leemanplate.com"
            ]
        },
        {
            url: "https://www.instagram.com/leemanplate/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/leemanplate/photos/a.114143215286434/3046111045422955/"
        },
        {
            url: "https://www.facebook.com/leemanplate/posts/2810342468999815"
        }
    ];
    public final tags:Array<Tag> = [
        automobile
    ];
}

