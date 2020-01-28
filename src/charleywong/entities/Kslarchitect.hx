package charleywong.entities;

class Kslarchitect implements Entity {
    public final id = "kslarchitect";
    public final name = [
        zh => "關兆倫 建築師"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kslarchitect/",
            meta: [
                "id" => "110664146960598",
                "about" => "建築師 ● 香港人\n香港大學建築學碩士\n認可人士(AP)。註冊檢驗人員(RI)\n審裁員(Adjudicator, HKIA List)\n選舉委員會委員",
                "categories" => [
                    "Non-profit organisation",
                    "Community"
                ],
                "email" => "kslarchitecthk@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kslarchitect/posts/127421255284887"
        },
        {
            url: "https://www.facebook.com/kslarchitect/photos/a.113064253387254/175345113825834/"
        }
    ];
}

