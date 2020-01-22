package charleywong.entities;

class Fieldmarkethk implements Entity {
    public final id = "fieldmarkethk";
    public final name = [
        zh => "山野市集"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/fieldmarkethk/",
            meta: [
                "about" => "踏進山野之深處，與大自然接軌，沿路上盡是綠意盎然的山、草、樹、澗﹔來細聽沒有混音綵排的蟲鳥協奏曲，陪伴在側的還有無添加的空氣，與三五知己遊走林間，暢談歡聚",
                "categories" => [
                    "Community"
                ],
                "tel" => "63109069",
                "id" => "312052972481971"
            ]
        },
        {
            url: "https://www.instagram.com/fieldmarkethk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.instagram.com/p/BymIRFPgWWk/"
        }
    ];
}

