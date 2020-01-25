package charleywong.entities;

class TomorrowPictures implements Entity {
    public final id = "TomorrowPictures";
    public final name = [
        zh => "明日映畫",
        en => "Tomorrow Pictures"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.tomorrowpictureshk.com"
        },
        {
            url: "https://www.facebook.com/TomorrowPictures/",
            meta: [
                "id" => "1845687475715508",
                "about" => "明日映畫係一間貪玩的廣告及婚攝製作公司\n\"最緊要好玩\"係我地一眾口頭禪\n我地相信 好的creative idea不受任何限制\n只要你敢試,我地就敢玩!",
                "categories" => [
                    "Art",
                    "Media/news company"
                ],
                "email" => "info@tomorrowpictureshk.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/TomorrowPictures/photos/a.1857880407829548/2495549357395980/"
        }
    ];
}

