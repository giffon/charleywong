package charleywong.entities;

class NgKaHimVince implements Entity {
    public final id = "NgKaHimVince";
    public final name = [
        zh => "伍家謙"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/vinceng88/"
        },
        {
            url: "https://www.facebook.com/NgKaHimVince/",
            meta: [
                "id" => "135794003149903",
                "about" => "自由身傳媒工作者，身份包括專欄作家、活動及節目主持、短片製作人等，前TVB首席體育記者/主播。工作聯絡：gimme5media@gmail.com",
                "categories" => [
                    "Public figure"
                ],
                "email" => "gimme5media@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/NgKaHimVince/posts/2882707518458524"
        },
        {
            url: "https://www.facebook.com/NgKaHimVince/posts/2799130196816257"
        },
        {
            url: "https://www.facebook.com/NgKaHimVince/posts/2781425558586721"
        },
        {
            url: "https://www.facebook.com/NgKaHimVince/posts/2765759193486691"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

