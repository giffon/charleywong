package charleywong.entities;

class Kumamonjourney implements Entity {
    public final id = "kumamonjourney";
    public final name = [
        zh => "熊本熊火車之旅"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kumamonjourney/",
            meta: [
                "id" => "1022815464415005",
                "about" => "本店專營代購各動漫周邊產品",
                "categories" => [
                    "Games/toys"
                ],
                "email" => "kerorocookies@yahoo.co.jp"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kumamonjourney/posts/2993845400645325"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

