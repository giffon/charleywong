package charleywong.entities;

class Twitchtvrabbitrei implements Entity {
    public final id = "twitchtvrabbitrei";
    public final name = [
        zh => "兔",
        en => "Rabbit"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/twitchtvrabbitrei/",
            meta: [
                "about" => "Rabbit 兔` 遊戲台",
                "categories" => [
                    "Just for fun"
                ],
                "email" => "ttvrabbitrei@gmail.com",
                "id" => "1118783441547058"
            ]
        },
        {
            url: "https://www.twitch.tv/rabbitrei"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/twitchtvrabbitrei/posts/2399106510181405"
        },
        {
            url: "https://www.facebook.com/twitchtvrabbitrei/posts/2377126842379372"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

