package charleywong.entities;

class GoodbyeGoodbuy implements Entity {
    public final id = "goodbyegoodbuy";
    public final name = [
        en => "Goodbye Goodbuy"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/goodbyegoodbuy/",
            meta: [
                "about" =>
                "全新\"Goodbye Goodbuy\", 前身是摩登夜冷~\n實體店暫停營業，網店會繼續經營，請密切留意Facebook專頁更新。\nOur b&m store is closed, but our online store is still working, please keep checking our Facebook for newness.",
                "categories" => [
                    "Boutique shop",
                    "Accessories"
                ],
                "email" => "isbinfshop@gmail.com",
                "id" => "170927579620691"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/goodbyegoodbuy/posts/2612653975448027"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

