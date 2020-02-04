package charleywong.entities;

class Anidsignal implements Entity {
    public final id = "anidsignal";
    public final name = [
        zh => "意色樓",
        en => "AN ID SIGNAL"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://soundcloud.com/an-id-signal"
        },
        {
            url: "https://www.facebook.com/anidsignal/",
            meta: [
                "id" => "367077059979888",
                "about" => "聽音符跟文字吵大架 一堆樂器聲聚在一起以為自己是浪\n要蓋過那些單字和詞語 或俚語\n想自己好似詩咁靚 床頭打交床尾和\n始終她們都交配出意色樓歌",
                "categories" => [
                    "Musician/band"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/anidsignal/posts/2434364073251166"
        }
    ];
    public final tags:Array<Tag> = [
        music
    ];
}

