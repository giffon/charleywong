package charleywong.entities;

class Hikingdb implements Entity {
    public final id = "hikingdb";
    public final name = [
        zh => "山野‧新聞庫",
        en => "The hiking Database"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hikingdb/",
            meta: [
                "about" => "每次出現行山活動的新聞，尤其是意外，小弟都會特別留意，要細心研究意外成因，因為這些不幸的事情都是一個學習，提醒自己如何在行山活動時避免意外發生。",
                "categories" => [
                    "Interest"
                ],
                "email" => "hikingdb@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hikingdb/posts/2436627736612774"
        },
        {
            url: "https://www.facebook.com/hikingdb/posts/2516796321929248"
        }
    ];
}

