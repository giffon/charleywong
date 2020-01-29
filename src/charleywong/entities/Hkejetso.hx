package charleywong.entities;

class Hkejetso implements Entity {
    public final id = "hkejetso";
    public final name = [
        en => "HKeJetso",
        zh => "易著數"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.hkejetso.com"
        },
        {
            url: "https://www.facebook.com/hkejetso/",
            meta: [
                "id" => "603712036638869",
                "about" => "全香港其中一個最齊全的電子著數優惠分享平台",
                "categories" => [
                    "Interest"
                ],
                "email" => "admin@hkejetso.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkejetso/posts/1021238741552861"
        }
    ];
    public final tags:Array<Tag> = [];
}

