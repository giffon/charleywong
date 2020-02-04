package charleywong.entities;

class Hkustradionews implements Entity {
    public final id = "hkustradionews";
    public final name = [
        zh => "科大電台新聞組",
        en => "HKUST Radio News Reporting Team"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://radio.su.ust.hk"
        },
        {
            url: "https://www.facebook.com/hkustradionews/",
            meta: [
                "id" => "114203039989972",
                "about" => "香港科技大學學生會 科大校園人民廣播電台\n科大電台新聞組\n\nHKUST Radio News Reporting Team\nPeople\'s Campus Radio, HKUSTSU",
                "categories" => [
                    "News and media website"
                ],
                "email" => "hkustradionews@gmail.com",
                "tel" => "69237688"
            ]
        },
        {
            url: "https://www.instagram.com/hkustradionews/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkustradionews/posts/140515287358747"
        },
        {
            url: "https://www.facebook.com/hkustradionews/videos/191447108917274/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

