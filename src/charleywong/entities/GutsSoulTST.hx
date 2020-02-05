package charleywong.entities;

class GutsSoulTST implements Entity {
    public final id = "GutsSoulTST";
    public final name = [
        zh => "燒魂",
        en => "Guts Soul"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/GutsSoulTST/",
            meta: [
                "id" => "130936883583121",
                "categories" => [
                    "Barbecue restaurant",
                    "Yakiniku restaurant",
                    "Sushi Restaurant"
                ],
                "addr" => "尖沙咀漆咸道南57-59號金馬倫中心2樓",
                "area" => "Tsim Sha Tsui"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/GutsSoulTST/photos/a.132519373424872/2991840327492748/"
        },
        {
            url: "https://www.facebook.com/GutsSoulTST/photos/a.550518434958295/2866749106668538/"
        },
        {
            url: "https://www.facebook.com/GutsSoulTST/posts/2862934550383327"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

