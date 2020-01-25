package charleywong.entities;

class MrAmy implements Entity {
    public final id = "0123amy";
    public final name = [
        en => "MrAmy"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.youtube.com/c/MrAMY"
        },
        {
            url: "https://www.facebook.com/0123amy/",
            meta: [
                "id" => "169523876795690",
                "about" => "M A R V E L || #TeamIronMan\nGaming / Movie Review / YouTube creator\n\nhttps://www.youtube.com/c/MrAMY",
                "categories" => [
                    "Producer"
                ],
                "email" => "jeffreyau123zac@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/0123amy/posts/853579908390080"
        }
    ];
}

