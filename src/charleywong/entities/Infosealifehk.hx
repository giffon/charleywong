package charleywong.entities;

class Infosealifehk implements Entity {
    public final id = "info.sealifehk";
    public final name = [
        zh => "貼堂",
        en => "Sealife"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/info.sealifehk/",
            meta: [
                "id" => "579783055823100",
                "about" => "《貼堂》SEALIFEHK 是來自我們每個人都可以張貼自己的傑作於平台給大家觀賞，以得到外界的一定支持和欣賞。仿如小時候美術課貼堂般，是值得欣賞的事情。宣揚以積極態度面對每一天的挑戰",
                "categories" => [
                    "Games/toys"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/info.sealifehk/photos/a.627718531029552/664841020650636/"
        }
    ];
    public final tags:Array<Tag> = [];
}

