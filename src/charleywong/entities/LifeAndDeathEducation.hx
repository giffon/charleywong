package charleywong.entities;

class LifeAndDeathEducation implements Entity {
    public final id = "LifeAndDeathEducation";
    public final name = [
        zh => "生死教育 X 伍桂麟"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/LifeAndDeathEducation/",
            meta: [
                "id" => "685222358242791",
                "about" => "讚好 / 搶先看【生死教育】facebook專頁，每天接收相關資訊和社會議題，彼此留言分享，反思生命，藉此啟發和凝聚不同的想像，「從死看生，活好當下」。",
                "categories" => [
                    "Community",
                    "Media/news company",
                    "Public figure"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/LifeAndDeathEducation/posts/2335255669906110"
        },
        {
            url: "https://www.facebook.com/LifeAndDeathEducation/posts/2427759173989092"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

