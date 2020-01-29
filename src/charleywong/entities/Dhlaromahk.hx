package charleywong.entities;

class Dhlaromahk implements Entity {
    public final id = "dhlaromahk";
    public final name = [
        zh => "大香理",
        en => "DAI HEUNG LEY"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/dhlaromahk/",
            meta: [
                "about" => "感官之中，香氣是最直接的傳訊媒體，最容易打動人們的感官。自然界的芳香是隨時間流逝揮發出獨有的自我，最原始的嗅覺感受最真實的味道。",
                "categories" => [
                    "Product/service",
                    "Art",
                    "Aromatherapy service"
                ],
                "email" => "daiheungley@gmail.com",
                "tel" => "55426784",
                "id" => "901277763281364"
            ]
        },
        {
            url: "https://www.instagram.com/dhlaromahk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/dhlaromahk/posts/2364512086957917"
        },
        {
            url: "https://www.facebook.com/dhlaromahk/posts/2572821786126945"
        }
    ];
    public final tags:Array<Tag> = [];
}

