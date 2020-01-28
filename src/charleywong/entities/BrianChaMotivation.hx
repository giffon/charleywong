package charleywong.entities;

class BrianChaMotivation implements Entity {
    public final id = "BrianChaOfficial";
    public final name = [
        en => "Brian Cha Motivation"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.briancha.com"
        },
        {
            url: "https://www.facebook.com/BrianChaOfficial/",
            meta: [
                "id" => "103152859778520",
                "about" => "車志健 Brian Cha 是一名具影響力的激勵講師、創業家、銷售專家、及亞洲唯一擁有三項不同運動世界紀錄保持者。他學員遍佈十多個國家及地區，教導他們怎樣達到事業及人生目標。",
                "categories" => [
                    "Public figure"
                ],
                "email" => "support@brianchamotivation.com",
                "tel" => "92150018"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/BrianChaOfficial/posts/2456118871148562"
        },
        {
            url: "https://www.facebook.com/BrianChaOfficial/posts/2631062593654188"
        }
    ];
}

