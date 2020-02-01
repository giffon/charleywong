package charleywong.entities;

class NPDICG implements Entity {
    public final id = "NPDICG";
    public final name = [
        zh => "北區水貨客關注組",
        en => "North District Parallel Imports Concern Group"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://bit.ly/19Nmkyw"
        },
        {
            url: "https://www.facebook.com/NPDICG/",
            meta: [
                "id" => "253000284822962",
                "about" => "針對水貨客所衍生的民生問題，由「光復上水站」行動成員自發成立。\n\n我哋需要大量義工或有志長期參與嘅同路人，大家如有興趣請inbox我哋。",
                "categories" => [
                    "Community"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/NPDICG/photos/a.253037951485862/2495984843857817/"
        },
        {
            url: "https://www.facebook.com/NPDICG/videos/1004138429965009/"
        },
        {
            url: "https://www.facebook.com/NPDICG/posts/2354028788053424"
        }
    ];
    public final tags:Array<Tag> = [
        organization,
        media
    ];
}

