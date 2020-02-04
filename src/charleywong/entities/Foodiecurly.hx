package charleywong.entities;

class Foodiecurly implements Entity {
    public final id = "foodiecurly";
    public final name = [
        en => "FoodieCurly",
        zh => "鬈毛妹肥嘟嘟日誌"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://foodiecurly.com"
        },
        {
            url: "https://www.facebook.com/foodiecurly/",
            meta: [
                "id" => "905581132910597",
                "about" => "鬈毛妹 (FoodieCurly)，天生一頭曲髮，愛吃，愛笑，愛文字，最近還愛上了拍片！2017年博文瀏覽量逾45萬次，最受歡迎影片達到1.7萬次瀏覽量，其他影片平均瀏覽量亦達1,000-5,000次。",
                "categories" => [
                    "Blogger",
                    "News and media website",
                    "Food and drink"
                ],
                "email" => "denise@foodiecurly.com",
                "tel" => "67400288"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/foodiecurly/posts/1594371904031513"
        }
    ];
    public final tags:Array<Tag> = [
        food,
        media
    ];
}

