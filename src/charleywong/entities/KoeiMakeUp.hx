package charleywong.entities;

class KoeiMakeUp implements Entity {
    public final id = "koeimakeup";
    public final name = [
        en => "Koei Make Up"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/koeimakeup/",
            meta: [
                "id" => "1443031965909176",
                "about" => "♥新娘化妝/姊妹/長輩/奶奶/Pre-wedding/註冊/試妝/謝師宴/晚宴/Set頭/髮型造型/頭飾..等等，歡迎查詢♥",
                "categories" => [
                    "Health/beauty"
                ],
                "tel" => "95784114"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/koeimakeup/photos/a.1452466084965764/2455005998045096/"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding
    ];
}

