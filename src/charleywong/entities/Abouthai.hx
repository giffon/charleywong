package charleywong.entities;

class Abouthai implements Entity {
    public final id = "abouthai";
    public final name = [
        en => "AbouThai",
        zh => "阿布泰國生活百貨"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.abouthai.com"
        },
        {
            url: "https://www.facebook.com/abouthai/",
            meta: [
                "about" => "為您搜羅一系列泰國優質健康產品、家庭用品、傳統手工藝品。我們專注於產品的實用性與功效，為追求生活品味的顧客提供多樣化的選擇。",
                "categories" => [
                    "Department store"
                ],
                "email" => "info@abouthai.com",
                "tel" => "27169777"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/abouthai/posts/2413681028903125"
        }
    ];
}

