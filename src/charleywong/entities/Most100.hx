package charleywong.entities;

class Most100 implements Entity {
    public final id = "100most";
    public final name = [
        zh => "100毛"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.100most.com.hk"
        },
        {
            url: "https://www.facebook.com/100most/",
            meta: [
                "id" => "273813022746352",
                "about" => "純港產法式旋轉型生活潮流雜誌《100毛》\n每周100條最注目話題 | 看得完．剛剛好\n逢星期四出版 | 10蚊本 | 全港便利店及報攤有售",
                "categories" => [
                    "Magazine"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/100most/photos/a.292832474177740/2512054275588871/"
        },
        {
            url: "https://www.facebook.com/100most/photos/a.292832474177740/2218765414917760/"
        },
        {
            url: "https://www.facebook.com/100most/posts/2154358264691809"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

