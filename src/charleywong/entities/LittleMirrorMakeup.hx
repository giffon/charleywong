package charleywong.entities;

class LittleMirrorMakeup implements Entity {
    public final id = "littlemirrormakeup";
    public final name = [
        en => "Little Mirror Makeup"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/littlemirrormakeup/",
            meta: [
                "id" => "1829966450664546",
                "categories" => [
                    "Makeup artist",
                    "Writer"
                ],
                "email" => "littlemirrormakeup@gmail.com",
                "tel" => "91209232"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/littlemirrormakeup/photos/a.1836824706645387/2405557499772102/"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding
    ];
}

