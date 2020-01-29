package charleywong.entities;

class ChillChewofficial implements Entity {
    public final id = "ChillChewofficial";
    public final name = [
        en => "ChillChew",
        zh => "小息時間"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ChillChewofficial/",
            meta: [
                "id" => "184985978826606",
                "about" => "小息時間 ChillChew．元朗炸物小店．慢麼麼咀嚼．懶洋洋品嚐",
                "categories" => [
                    "Local business"
                ],
                "addr" => "元朗擊壤路9號金寶大廈地下6B舖",
                "area" => "Yuen Long",
                "email" => "chillchewgroup@gmail.com",
                "tel" => "61141759"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ChillChewofficial/posts/495714261087108"
        },
        {
            url: "https://www.facebook.com/ChillChewofficial/photos/a.185976368727567/464936120831589/"
        },
        {
            url: "https://www.facebook.com/ChillChewofficial/photos/a.185976368727567/445181912807010/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

