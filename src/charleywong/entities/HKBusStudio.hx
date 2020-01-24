package charleywong.entities;

class HKBusStudio implements Entity {
    public final id = "hkbusstudio";
    public final name = [
        en => "HKBus Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hkbusstudio.com"
        },
        {
            url: "https://www.facebook.com/hkbusstudio/",
            meta: [
                "id" => "283045725154921",
                "about" => "本網致力分享香港巴士相片及巴士專題文章\n並不時分享香港巴士路線消息 及 相關新聞。",
                "categories" => [
                    "Personal website"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkbusstudio/posts/2361390913987048"
        }
    ];
}

