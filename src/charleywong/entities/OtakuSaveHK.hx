package charleywong.entities;

class OtakuSaveHK implements Entity {
    public final id = "OtakuSaveHK";
    public final name = [
        en => "Otaku Save HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/OtakuSaveHK/",
            meta: [
                "id" => "627485427745958",
                "about" => "一群關心社會的創作者結集而成。",
                "categories" => [
                    "Art"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/OtakuSaveHK/posts/706209146540252"
        },
        {
            url: "https://www.facebook.com/OtakuSaveHK/posts/703200420174458"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

