package charleywong.entities;

class UnitedSocialPress implements Entity {
    public final id = "UnitedSocialPress";
    public final name = [
        en => "USP United Social Press",
        zh => "社媒"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/UnitedSocialPress/",
            meta: [
                "id" => "579827748716829",
                "about" => "立於香港，放眼社會，為時代留下足跡\n圖片版權 CC BY-NC-SA 4.0\n使用請註明...\n\n\n\n\nSee more",
                "categories" => [
                    "Media/news company"
                ],
                "email" => "unitedsocialpress@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/UnitedSocialPress/posts/2958383737527873"
        },
        {
            url: "https://www.facebook.com/UnitedSocialPress/posts/843060242393577"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

