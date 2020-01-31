package charleywong.entities;

class Waidaicompany implements Entity {
    public final id = "waidaicompany";
    public final name = [
        zh => "偉大百貨公司"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/waidaicompany/",
            meta: [
                "id" => "104946244332088",
                "about" => "九龍坪石邨紅石樓120號",
                "categories" => [
                    "Shopping & retail"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/waidaicompany/photos/a.113490603477652/113498183476894/"
        },
        {
            url: "https://www.facebook.com/waidaicompany/videos/2409043879411933/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

