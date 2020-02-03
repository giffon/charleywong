package charleywong.entities;

class Goodmorningking implements Entity {
    public final id = "goodmorningking";
    public final name = [
        zh => "早霸王",
        en => "Good Morning King"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.my903.com"
        },
        {
            url: "https://www.facebook.com/goodmorningking/",
            meta: [
                "id" => "497959920269105",
                "about" => "商業電台節目官方fanpage\n叱咤903《早霸王》",
                "categories" => [
                    "Just for fun",
                    "Community"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/goodmorningking/posts/2667739599957782"
        },
        {
            url: "https://www.facebook.com/goodmorningking/posts/2378831612181917"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

