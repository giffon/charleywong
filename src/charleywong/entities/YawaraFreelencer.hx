package charleywong.entities;

class YawaraFreelencer implements Entity {
    public final id = "YawaraFreelence";
    public final name = [
        en => "Yawara Freelencer"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/YawaraFreelence/",
            meta: [
                "id" => "137676816432906",
                "about" => "Love Design, Love all Cool things!\n專業設計 校刊、海報、單張、卡片、橫額 及 易拉架，另有代砌紙模型服務，歡迎PM報價。",
                "categories" => [
                    "Personal blog",
                    "Graphic designer"
                ],
                "email" => "yawarabusiness@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/YawaraFreelence/posts/1059964027537509"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

