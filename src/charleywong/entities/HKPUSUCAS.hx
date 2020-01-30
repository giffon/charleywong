package charleywong.entities;

class HKPUSUCAS implements Entity {
    public final id = "HKPUSUCAS";
    public final name = [
        zh => "香港理工大學動畫及漫畫學會",
        en => "HKPUSU Cartoons Art Society"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/HKPUSUCAS/",
            meta: [
                "categories" => [
                    "Non-profit organisation"
                ],
                "email" => "comic@su.polyu.edu.hk",
                "id" => "267361573469632"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HKPUSUCAS/posts/1119701614902286"
        },
        {
            url: "https://www.facebook.com/HKPUSUCAS/posts/1076852989187149"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}

