package charleywong.entities;

class HKSocialWorkersGeneralUnion implements Entity {
    public final id = "HKSocialWorkersGeneralUnion";
    public final name = [
        zh => "香港社會工作者總工會",
        en => "Hong Kong Social Workers General Union"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hkswgu.org.hk"
        },
        {
            url: "https://www.facebook.com/HKSocialWorkersGeneralUnion/",
            meta: [
                "id" => "165937923461968",
                "about" => "香港社會工作者總工會(社總)是一個自負盈虧的工會，秉承「團結同工、爭取權益、改善服務、支持正義」的宗旨，為前線社福同工和基層市民發聲及行動。期待各位社福同工加入一起改變未來",
                "categories" => [
                    "Non-profit organisation",
                    "Community organisation",
                    "Organisation"
                ],
                "email" => "office@hkswgu.org.hk",
                "tel" => "27802021"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HKSocialWorkersGeneralUnion/posts/2528637773858626"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}

