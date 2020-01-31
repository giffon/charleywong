package charleywong.entities;

class Daremediahk implements Entity {
    public final id = "daremediahk";
    public final name = [
        zh => "夠薑媒體",
        en => "Dare Media HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.daremediahk.com"
        },
        {
            url: "https://www.facebook.com/daremediahk/",
            meta: [
                "id" => "114379076584971",
                "about" => "《夠薑宣言》\n我們會為本土黃店提供曝光及宣傳平台！\n我們會為全港同路人提供最貼地的生活資訊及消費指南！\n我們將為促進「黃色經濟圈」夠薑到底！\n查詢 : cs@daremediahk.com",
                "categories" => [
                    "Community"
                ],
                "email" => "cs@daremediahk.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/daremediahk/posts/151287662894112"
        },
        {
            url: "https://www.facebook.com/daremediahk/photos/a.162230611799817/162230678466477/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

