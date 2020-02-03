package charleywong.entities;

class KaikiChan1130 implements Entity {
    public final id = "KaikiChan1130";
    public final name = [
        en => "Kaiki Chan",
        zh => "卡奇"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/KaikiChan1130/",
            meta: [
                "id" => "458109538282384",
                "about" => "大家好~我是卡奇~\n是一位喜歡畫畫和小動物的漫畫家❤\n正職是玩倉鼠~副業是畫漫畫和教授兒童畫班~...\n\n\nSee more",
                "categories" => [
                    "Art"
                ],
                "email" => "kaiki5566@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/KaikiChan1130/photos/a.461361704623834/573430740083596/"
        },
        {
            url: "https://www.facebook.com/KaikiChan1130/photos/a.461361704623834/470850430341628/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

