package charleywong.entities;

class Liveforlifegiveforneeds implements Entity {
    public final id = "liveforlife.giveforneeds";
    public final name = [
        zh => "活 / 著 / 生 / 活",
        en => "Live For Life"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/liveforlife.giveforneeds/",
            meta: [
                "id" => "556520331212723",
                "about" => "這個非牟利 lifestyle project 目的系希望...\n今天起學會 「編織 • 惜物 • 認識」所有毛冷製品將捐出需要人仕，精品收益轉交流浪貓團體\n\n另有自資印製 「支持領養絕不棄養」喵星名信片作義賣",
                "categories" => [
                    "Pop-up shop"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/liveforlife.giveforneeds/posts/1223367511194665"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

