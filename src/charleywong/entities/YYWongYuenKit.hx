package charleywong.entities;

class YYWongYuenKit implements Entity {
    public final id = "YYWongYuenKit";
    public final name = [
        en => "YY Wong",
        zh => "歪歪王"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/YYWongYuenKit/",
            meta: [
                "id" => "266896930327380",
                "about" => "顧左右而言他。\n\nInstagram： https://www.instagram.com/yywongyk/",
                "categories" => [
                    "Author"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/YYWongYuenKit/posts/905414586475608"
        },
        {
            url: "https://www.facebook.com/YYWongYuenKit/photos/a.481866218830449/918529155164151/"
        },
        {
            url: "https://www.facebook.com/YYWongYuenKit/photos/a.481866218830449/890306181319782/"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

