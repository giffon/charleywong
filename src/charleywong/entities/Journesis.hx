package charleywong.entities;

class Journesis implements Entity {
    public final id = "journesis";
    public final name = [
        en => "Journesis"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.journesis.com"
        },
        {
            url: "https://www.facebook.com/journesis/",
            meta: [
                "id" => "103602823372112",
                "about" =>
                "我們相信新聞資訊在科技牽引下，由發布到接收，可以更貼近每一個不一樣的人。\n\nTransform the way people create and perceive news and information for making better decision for their lives.",
                "categories" => [
                    "Information technology company",
                    "News and media website",
                    "Media/news company"
                ],
                "email" => "whatsup@journesis.com"
            ]
        },
        {
            url: "https://www.instagram.com/journesis/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/journesis/posts/923473778051675"
        },
        {
            url: "https://www.facebook.com/journesis/posts/974067619658957"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

