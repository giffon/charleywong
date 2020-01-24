package charleywong.entities;

class PracticeMoment implements Entity {
    public final id = "practicemoment";
    public final name = [
        en => "PracticeMoment"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/practicemoment/",
            meta: [
                "id" => "1487370451535338",
                "about" => "PracticeMoment\n樂器課程,鼓房練習房租用及樂器售賣\n地址： 元朗宏發徑8號宏發商場2樓17號舖...\n\n\nSee more",
                "categories" => [
                    "Musical instrument store",
                    "Film & music shop",
                    "Education"
                ],
                "addr" => "元朗宏發徑8號宏發商場2樓17號舖",
                "area" => "Yuen Long",
                "email" => "practicemoment@gmail.com",
                "tel" => "93450777"
            ]
        },
        {
            url: "https://www.instagram.com/practicemoment_ig/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/practicemoment/posts/2439881972950843"
        },
        {
            url: "https://www.facebook.com/practicemoment/posts/2320968104842231"
        }
    ];
}

