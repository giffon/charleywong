package charleywong.entities;

class Hk1963 implements Entity {
    public final id = "1963.hk";
    public final name = [
        zh => "1963 木十豆寸"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/1963.hk/",
            meta: [
                "about" => "1963 木十豆寸\n台灣料理 Taiwanese Gourmet",
                "categories" => [
                    "Taiwanese Restaurant"
                ],
                "addr" => "灣仔道110號2樓",
                "area" => "Hong Kong",
                "tel" => "31050160"
            ]
        },
        {
            url: "https://www.instagram.com/1963treee/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/1963.hk/posts/1413702825473798"
        }
    ];
}
