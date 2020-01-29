package charleywong.entities;

class Mingpaoinews implements Entity {
    public final id = "mingpaoinews";
    public final name = [
        zh => "明報即時新聞"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://news.mingpao.com"
        },
        {
            url: "https://www.facebook.com/mingpaoinews/",
            meta: [
                "about" => "明報即時新聞\n電郵報料:inews@mingpao.com\n報料熱線:91814676",
                "categories" => [
                    "Media/news company"
                ],
                "addr" => "15/F, Block A, Ming Pao Industrial Centre, 18 Ka Yip Street, Chai Wan",
                "area" => "Hong Kong",
                "email" => "inews@mingpao.com",
                "tel" => "91814676",
                "id" => "498203090239831"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mingpaoinews/posts/2643215309071921"
        }
    ];
    public final tags:Array<Tag> = [];
}

