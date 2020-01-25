package charleywong.entities;

class TheFlame implements Entity {
    public final id = "TheFlameMusic";
    public final name = [
        en => "The Flame"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/TheFlameMusic/",
            meta: [
                "id" => "169358833127751",
                "about" => "感謝你與我們一起在街頭現場音樂。我們喜愛透過音樂與人互動，令人快樂。如果我們的街頭音樂讓你快樂，請你把更多的愛帶給身邊的人，並繼續支持香港的街頭藝術文化!",
                "categories" => [
                    "Performing arts",
                    "Musician/band"
                ],
                "email" => "info@theflamemusic.com",
                "tel" => "63376020"
            ]
        },
        {
            url: "https://www.instagram.com/theflamemusic/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/TheFlameMusic/posts/2717941318269477"
        }
    ];
}

