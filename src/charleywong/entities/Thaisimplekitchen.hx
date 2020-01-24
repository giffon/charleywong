package charleywong.entities;

class Thaisimplekitchen implements Entity {
    public final id = "thaisimplekitchen";
    public final name = [
        en => "Thai Simple Kitchen",
        zh => "泰簡單"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/thaisimplekitchen/",
            meta: [
                "id" => "1496352034002571",
                "about" => "位於銅鑼灣的露天泰國餐廳",
                "categories" => [
                    "Asian fusion restaurant",
                    "Thai restaurant"
                ],
                "addr" => "香港 銅鑼灣 謝斐道517號 總統戲院售票處側入口 按3字頂樓",
                "area" => "Hong Kong",
                "tel" => "28382896"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/thaisimplekitchen/posts/2140854906218944/"
        }
    ];
}

