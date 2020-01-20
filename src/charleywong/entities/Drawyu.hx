package charleywong.entities;

class Drawyu implements Entity {
    public final id = "draw4yu";
    public final name = [
        zh => "欸你是豬嗎",
        en => "Draw4yu"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/draw4yu/",
            meta: [
                "about" => "豚豚是一隻粉紅色軟綿綿的小豬，以紅紅胖胖的臉作為特徵，最擅長吃東西；希望這些圖文作品能提供正能量治癒大家～\n�instagram：draw4yu",
                "categories" => [
                    "Fictional character"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/draw4yu/posts/3089102147785232"
        },
        {
            url: "https://www.facebook.com/draw4yu/photos/a.2022157477813043/3082035798491867/"
        }
    ];
}

