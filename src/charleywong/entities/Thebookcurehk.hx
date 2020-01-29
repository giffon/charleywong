package charleywong.entities;

class Thebookcurehk implements Entity {
    public final id = "thebookcure.hk";
    public final name = [
        zh => "解憂舊書店",
        en => "The Book Cure"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/thebookcure.hk/",
            meta: [
                "about" => "Reading × Soul\nKnowledge × Recycle\n\n〖閱讀・心靈〗\n〖知識・環保〗",
                "categories" => [
                    "Book shop",
                    "Charity or second-hand shop"
                ],
                "addr" => "新界大埔寶湖道街市F021",
                "area" => "Hong Kong",
                "email" => "thebookcure.hk@gmail.com",
                "tel" => "53923220",
                "id" => "1107868172610759"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/thebookcure.hk/posts/2729989220398638"
        }
    ];
    public final tags:Array<Tag> = [];
}

