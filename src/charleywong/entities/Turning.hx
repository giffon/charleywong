package charleywong.entities;

class Turning implements Entity {
    public final id = "flower.turning";
    public final name = [
        en => "Turning"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/flower.turning/",
            meta: [
                "id" => "370341993417287",
                "about" => "\'\'Turning\'\'是一個以押花製品為主的零售平台:)\n把鮮花小草最有活力的一面封存, 再加放在我們生活用品或飾物上, 讓我們在觀看或在使用時, 心裡都會有一種平靜和溫暖感覺:)",
                "categories" => [
                    "Product/service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/flower.turning/posts/830626027388879"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

