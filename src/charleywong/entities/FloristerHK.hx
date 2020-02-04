package charleywong.entities;

class FloristerHK implements Entity {
    public final id = "thefloristerhk";
    public final name = [
        en => "Florister HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/thefloristerhk/",
            meta: [
                "id" => "104097253093883",
                "about" => "Love is all around",
                "categories" => [
                    "Product/service"
                ],
                "email" => "floristerhk@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/thefloristerhk/posts/1295028457334084"
        }
    ];
    public final tags:Array<Tag> = [
        florist
    ];
}

