package charleywong.entities;

class MarjorieMakeupHouse implements Entity {
    public final id = "marjoriemakeuphouse";
    public final name = [
        en => "Marjorie Makeup House"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/marjoriemakeuphouse/",
            meta: [
                "id" => "1474725235898600",
                "about" => "歡迎查詢: 新娘 / 姊妹 / 伴娘 / 奶奶 / 宴會 / 外影 / 個人化妝等服務。",
                "categories" => [
                    "Makeup artist"
                ],
                "email" => "marjoriemakeuphouse@hotmail.com",
                "tel" => "92279795"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/marjoriemakeuphouse/posts/2512157905488656"
        }
    ];
}

