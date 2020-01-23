package charleywong.entities;

class Daikatsumk implements Entity {
    public final id = "daikatsumk";
    public final name = [
        zh => "大勝丼",
        en => "Daikatsu Don"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/daikatsumk/",
            meta: [
                "id" => "375608802926582",
                "about" => "多種和風系刺身燒肉丼！\n星期一至四晚市全單88折！\n全時段免收加一服務費！\n選用日本珍珠米飯",
                "categories" => [
                    "Japanese restaurant"
                ],
                "addr" => "旺角彌敦道594-596號旺角新城5樓",
                "area" => "Kowloon, Hong Kong",
                "email" => "daikatsumk@gmail.com",
                "tel" => "36187488"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/daikatsumk/posts/681053462382113"
        },
        {
            url: "https://www.facebook.com/daikatsumk/posts/677502702737189"
        }
    ];
}

