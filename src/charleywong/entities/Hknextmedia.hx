package charleywong.entities;

class Hknextmedia implements Entity {
    public final id = "hk.nextmedia";
    public final name = [
        zh => "香港蘋果日報"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://hk.appledaily.com"
        },
        {
            url: "https://www.facebook.com/hk.nextmedia/",
            meta: [
                "about" => "蘋果fb team一年四季風雨不改，每日分享精選新聞及網絡新鮮事。\n\n訂閱登記查詢...\n\n\n\n\n\n\n\nSee more",
                "categories" => [
                    "Media/news company",
                    "Newspaper"
                ],
                "id" => "105259197447"
            ]
        },
        {
            url: "https://www.instagram.com/appledailyhk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hk.nextmedia/posts/10158465273987448"
        },
        {
            url: "https://www.facebook.com/hk.nextmedia/videos/464462177786723/"
        }
    ];
    public final tags:Array<Tag> = [];
}

