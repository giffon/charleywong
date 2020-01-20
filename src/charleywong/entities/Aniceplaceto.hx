package charleywong.entities;

class Aniceplaceto implements Entity {
    public final id = "niceplaceto";
    public final name = [
        zh => "好地方工作室",
        en => "A nice place to"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/niceplaceto/",
            meta: [
                "about" => "攝影 / 手藝工作坊 / 生活小物 / 分享會 / flea market",
                "categories" => [
                    "Arts and entertainment",
                    "Shopping & retail",
                    "Event planner"
                ],
                "addr" => "2 Chung Ching Street",
                "area" => "Sai Ying Pun",
                "email" => "aniceplaceto@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/niceplaceto/photos/a.719310798123623/2357079801013373"
        }
    ];
}

