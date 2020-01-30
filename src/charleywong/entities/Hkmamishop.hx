package charleywong.entities;

class Hkmamishop implements Entity {
    public final id = "hkmamishop";
    public final name = [
        en => "HKmamishop",
        zh => "香港媽咪一站式購物網站"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://hkmamishop.com"
        },
        {
            url: "https://www.facebook.com/hkmamishop/",
            meta: [
                "id" => "1769920059903530",
                "about" => "HKmamishop為大家搜羅最抵最有用既產品/服務\n亦會為大家提供各種育兒資訊，家居小百科，食譜，烘焙等資訊",
                "categories" => [
                    "Interest"
                ],
                "email" => "info@hkmamishop.com",
                "tel" => "95579355"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkmamishop/posts/2551706445058217"
        },
        {
            url: "https://www.facebook.com/hkmamishop/posts/2611943085701219"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

