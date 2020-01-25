package charleywong.entities;

class KawaBeauty implements Entity {
    public final id = "kawabeauty";
    public final name = [
        en => "Kawa Beauty"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kawabeauty/",
            meta: [
                "id" => "1901842550061010",
                "about" => "手機: 52235549\n新娘化妝 /姊妹化妝, 晚宴化妝 個人化妝及各類化妝髮型服務",
                "categories" => [
                    "Makeup artist",
                    "Cosmetology school"
                ],
                "email" => "mua.kawa@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kawabeauty/posts/2536005473311378"
        }
    ];
}

