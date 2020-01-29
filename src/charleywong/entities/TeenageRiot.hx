package charleywong.entities;

class TeenageRiot implements Entity {
    public final id = "teenageriothk";
    public final name = [
        en => "Teenage Riot"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://harbourrecords.com"
        },
        {
            url: "https://www.facebook.com/teenageriothk/",
            meta: [
                "about" =>
                "維港唱片旗下的Teenage Riot是一隊流動神光樂隊，名字來自紐約神級樂隊Sonic Youth 1988年面世的經典金曲Teen Age Riot。\nStaring life as a Sonic Youth covers band, a HK indie musical collective band.",
                "categories" => [
                    "Musician/band"
                ],
                "email" => "teenageriothongkong@gmail.com",
                "id" => "556344564442536"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/teenageriothk/posts/2568537766556529"
        },
        {
            url: "https://www.facebook.com/teenageriothk/posts/2402722833138024"
        },
        {
            url: "https://www.facebook.com/teenageriothk/photos/a.564609593616033/2275852465825062/"
        }
    ];
    public final tags:Array<Tag> = [];
}

