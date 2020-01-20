package charleywong.entities;

class MishtarLifeStyle implements Entity {
    public final id = "MishtarLifeStyle";
    public final name = [
        en => "Mishtar Life Style"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/MishtarLifeStyle/",
            meta: [
                "about" => "手作 . 雜貨 . 築夢\n希望透過捕夢網宣揚印第安的祝福文化~",
                "categories" => [
                    "Arts and crafts shop",
                    "Product/service"
                ],
                "email" => "mishtarbo@yahoo.com.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MishtarLifeStyle/photos/a.505357042857245/2783284141731179/"
        },
        {
            url: "https://www.facebook.com/MishtarLifeStyle/photos/a.505357042857245/2719107608148833/"
        }
    ];
}

