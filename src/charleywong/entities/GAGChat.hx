package charleywong.entities;

class GAGChat implements Entity {
    public final id = "GAGchat";
    public final name = [
        en => "GAG Chat"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/GAGchat/",
            meta: [
                "id" => "2101040823511278",
                "about" => ">每日分享生活趣聞、趣事、趣怪語錄\n>歡迎投稿 齊齊分享日常生活趣怪事\n>部分內容為轉載改編 疑侵權請告知...\n\n\n\nSee more",
                "categories" => [
                    "Blogger",
                    "Media",
                    "Arts and entertainment"
                ],
                "email" => "gagchat.hk@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/GAGchat/posts/2401751716773519"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

