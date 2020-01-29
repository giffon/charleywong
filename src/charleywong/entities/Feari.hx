package charleywong.entities;

class Feari implements Entity {
    public final id = "FeariHK";
    public final name = [
        en => "Feari"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.youtube.com/c/FeariHK"
        },
        {
            url: "https://www.facebook.com/FeariHK/",
            meta: [
                "about" => "香港女子同人舞團\n主打niconico/J-pop等舞蹈, 請大家多多指教(*´∀`)\n...\n\n\nSee more",
                "categories" => [
                    "Dancer"
                ],
                "id" => "1597782820479662"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/FeariHK/posts/2392805410977395"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

