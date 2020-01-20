package charleywong.entities;

class MakeYourDayCandle implements Entity {
    public final id = "myd.candle";
    public final name = [
        en => "Make Your Day Candle"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/myd.candle/",
            meta: [
                "about" => "一次自身經歷 造就了Make Your Day的成立。\n一點燭光，一個故事\n我們用蠟燭說故事。\n當燭光燃起時, 同時喚醒生活中的小確幸。",
                "categories" => [
                    "Arts and crafts shop"
                ],
                "email" => "makeyourday1210@gmail.com",
                "tel" => "61022477"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/myd.candle/photos/a.355325641466678/1044417555890813/"
        },
        {
            url: "https://www.facebook.com/myd.candle/posts/1037011159964786"
        },
        {
            url: "https://www.facebook.com/myd.candle/photos/a.355325641466678/1029154327417136/"
        }
    ];
}

