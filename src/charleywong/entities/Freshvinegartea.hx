package charleywong.entities;

class Freshvinegartea implements Entity {
    public final id = "freshvinegartea";
    public final name = [
        en => "True Boss",
        zh => "醋頭家"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/freshvinegartea/",
            meta: [
                "id" => "617689218590808",
                "about" => "不追求耀眼奪目的虛華瞬間\n所以產品沒有光鮮外表能讓人打卡炫耀，\n...\n\n\n\n\nSee more",
                "categories" => [
                    "Taiwanese restaurant",
                    "Smoothie and juice bar"
                ],
                "addr" => "元朗建業街51號鋪-總店",
                "area" => "Yuen Long",
                "email" => "info@truebosshk.com",
                "tel" => "98687716"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/freshvinegartea/photos/a.620235875002809/1053944684965257/"
        },
        {
            url: "https://www.facebook.com/freshvinegartea/photos/a.620235875002809/1049611722065220/"
        }
    ];
    public final tags:Array<Tag> = [];
}

