package charleywong.entities;

class DrKwan implements Entity {
    public final id = "Dr.Kwan";
    public final name = [
        zh => "關家倫 中醫學博士"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Dr.Kwan/",
            meta: [
                "about" => "香港中文大學中醫藥學哲學博士。\n註冊中醫師。選舉委員會委員。",
                "categories" => [
                    "Scientist",
                    "Doctor"
                ],
                "id" => "268572053337726"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Dr.Kwan/posts/1178255659036023"
        }
    ];
    public final tags:Array<Tag> = [
        medical
    ];
}

