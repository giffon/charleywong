package charleywong.entities;

class M2Cafe implements Entity {
    public final id = "m2cafehk";
    public final name = [
        en => "M2 Cafe"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/m2cafehk/",
            meta: [
                "about" => "本店提供舒適環境與好友暢談地方，寬闊露台，可於繁華鬧市中找到一個舒服環境稍作休息\n設有戶外吸煙區\n自助餐 包場",
                "categories" => [
                    "Coffee shop",
                    "Restaurant"
                ],
                "addr" => "香港銅鑼灣景隆街3號2樓",
                "area" => "Causeway Bay",
                "tel" => "28387662",
                "id" => "591462627565333"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/m2cafehk/posts/2995672777144294"
        },
        {
            url: "https://www.facebook.com/m2cafehk/posts/2919565968088309"
        }
    ];
    public final tags:Array<Tag> = [];
}

