package charleywong.entities;

class KEYsTheatre implements Entity {
    public final id = "KEYsTheatre";
    public final name = [
        zh => "鎖匙",
        en => "KEY"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.youtube.com/user/KEYsTheatre"
        },
        {
            url: "https://www.facebook.com/KEYsTheatre/",
            meta: [
                "id" => "1412098092346271",
                "about" => "社工 主持 導演\n演員 心理培訓師\n香港屋邨仔 西蘭公國勳爵...\n\n\n\n\nSee more",
                "categories" => [
                    "Social service",
                    "Artist"
                ],
                "email" => "key.defrost@live.com"
            ]
        },
        {
            url: "https://www.instagram.com/KEYsTheatre/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/KEYsTheatre/posts/2451865631702840"
        }
    ];
    public final tags:Array<Tag> = [];
}

