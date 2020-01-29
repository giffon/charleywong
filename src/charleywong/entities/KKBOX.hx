package charleywong.entities;

class KKBOX implements Entity {
    public final id = "KKBOXHK";
    public final name = [
        en => "KKBOX"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.kkbox.com"
        },
        {
            url: "https://www.facebook.com/KKBOXHK/",
            meta: [
                "about" => "★KKBOX 一起聽音樂吧！ www.kkbox.com★",
                "categories" => [
                    "Product/service"
                ],
                "id" => "191473504869"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/KKBOXHK/posts/10157139860099870"
        },
        {
            url: "https://www.facebook.com/KKBOXHK/posts/10157367957979870"
        }
    ];
    public final tags:Array<Tag> = [];
}

