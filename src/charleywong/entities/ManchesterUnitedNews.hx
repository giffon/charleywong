package charleywong.entities;

class ManchesterUnitedNews implements Entity {
    public final id = "munews";
    public final name = [
        en => "Manchester United News"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.fanpiece.com/munews"
        },
        {
            url: "https://www.facebook.com/munews/",
            meta: [
                "id" => "100273486794265",
                "about" =>
                "球迷會:https://www.facebook.com/groups/536988403004416/\nRagazine聲音節目\nhttp://www.ragazine.com.hk/index.php/programmes/menu-sports-life/menu-utdman",
                "categories" => [
                    "Professional sports team"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/munews/posts/1407217279433206"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

