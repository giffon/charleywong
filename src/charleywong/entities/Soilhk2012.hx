package charleywong.entities;

class Soilhk2012 implements Entity {
    public final id = "soilhk2012";
    public final name = [
        zh => "鄉土學社",
        en => "SoIL"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/soilhk2012/",
            meta: [
                "about" => "鄉土學社SoIL (Society for Indigenous Learning) 於2012年盛夏成立，位於上水梧桐河畔華山村旁。致力推動鄉土教育，從農耕、歷史、文化、地理、自然等範疇向土地學習，重新認識生活。",
                "categories" => [
                    "Farm",
                    "Environmental service",
                    "Agricultural cooperative"
                ],
                "addr" => "上水華山村DD51 LOT503&4 （近梧桐河及舊華山村公立學校）",
                "area" => "Hong Kong",
                "email" => "soil.education@gmail.com",
                "id" => "470387932992982"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/soilhk2012/posts/2567597176605370"
        },
        {
            url: "https://www.facebook.com/soilhk2012/posts/2719427388089014"
        },
        {
            url: "https://www.facebook.com/soilhk2012/posts/2673714695993617"
        },
        {
            url: "https://www.facebook.com/soilhk2012/videos/2566023503429404/"
        }
    ];
    public final tags:Array<Tag> = [
        organization,
        shop
    ];
}

