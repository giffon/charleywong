package charleywong.entities;

class Standnewshk implements Entity {
    public final id = "standnewshk";
    public final name = [
        en => "Stand News",
        zh => "立場新聞"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.thestandnews.com"
        },
        {
            url: "https://www.facebook.com/standnewshk/",
            meta: [
                "about" => "任何團體及個人，如欲投稿、報料，發佈新聞稿或採訪通知，請電郵至 Editorial@TheStandNews.com",
                "categories" => [
                    "Media/news company"
                ],
                "email" => "editorial@thestandnews.com",
                "id" => "710476795704610"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/standnewshk/posts/2586130681472536"
        }
    ];
    public final tags:Array<Tag> = [];
}

