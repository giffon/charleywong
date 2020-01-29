package charleywong.entities;

class Unicorndreamshk implements Entity {
    public final id = "unicorn.dreams.hk";
    public final name = [
        zh => "夢遊獨角獸",
        en => "Unicorn Dreams"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/unicorn.dreams.hk/",
            meta: [
                "about" => "“Unicorn Dreams , your fantasy moment.”\n【UD】夢遊獨角獸★原創明信片&插畫&飾物★\n夢遊獨角獸 Unicorn Dreams 簡稱【UD】\n獨角獸代表夢幻 治癒 真摯的感情(思念)\n推廣激素依賴性皮炎資訊",
                "categories" => [
                    "Arts and crafts shop",
                    "Literary arts",
                    "Artist"
                ],
                "email" => "unicorn.dreams.hk@gmail.com",
                "tel" => "94430387",
                "id" => "194007371237148"
            ]
        },
        {
            url: "https://www.instagram.com/unicorn.dreams.hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/unicorn.dreams.hk/photos/a.303419963629221/497072000930682/"
        },
        {
            url: "https://www.facebook.com/unicorn.dreams.hk/posts/470100093627873"
        }
    ];
    public final tags:Array<Tag> = [];
}

