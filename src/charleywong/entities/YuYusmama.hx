package charleywong.entities;

class YuYusmama implements Entity {
    public final id = "YuYus.mama";
    public final name = [
        zh => "雙如爸媽健康家"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/YuYus.mama/",
            meta: [
                "id" => "1367725240035175",
                "about" => "現今香港人工作繁忙壓力大，導致身體毛病，想養生，但係又煲中藥，麻煩又難飲，所以雙如爸媽「每日一杯 一沖即飲」幫到大家",
                "categories" => [
                    "Business service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/YuYus.mama/posts/2135937479880610"
        },
        {
            url: "https://www.facebook.com/YuYus.mama/photos/a.1378380312303001/2269263373214686/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

