package charleywong.entities;

class AlvinYeungCP implements Entity {
    public final id = "AlvinYeungCP";
    public final name = [
        en => "Alvin Yeung",
        zh => "楊岳橋"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.youtube.com/c/AlvinYeung楊岳橋"
        },
        {
            url: "https://www.facebook.com/AlvinYeungCP/",
            meta: [
                "id" => "629523323807742",
                "about" => "新界東立法會議員，執業大律師，公民黨黨魁\nIG ❖ https://i.instagram.com/alvinyeungnk/\n辦事處電話 ❖ 8105 6471 (10am-7pm)",
                "categories" => [
                    "Public figure"
                ],
                "email" => "info@ayeung.hk",
                "tel" => "81056471"
            ]
        },
        {
            url: "https://www.instagram.com/alvinyeungnk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/AlvinYeungCP/posts/2520953451331377"
        },
        {
            url: "https://www.facebook.com/AlvinYeungCP/posts/2442989035794486"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

