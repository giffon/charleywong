package charleywong.entities;

class Chuhoidick implements Entity {
    public final id = "chuhoidick";
    public final name = [
        zh => "八鄉朱凱廸",
        en => "Chu Hoi Dick"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://chuhoidick.hk"
        },
        {
            url: "https://www.facebook.com/chuhoidick/",
            meta: [
                "id" => "201155333283732",
                "about" => "朱凱廸一直相信，鄉村最有價值的，是農田和水源。我們可以一起重建本土農業，復興香港鄉村。",
                "categories" => [
                    "Public figure"
                ],
                "email" => "info@chuhoidick.hk",
                "tel" => "28092102"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/chuhoidick/posts/2385849888147588"
        }
    ];
}

