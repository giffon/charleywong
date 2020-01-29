package charleywong.entities;

class FingersWork implements Entity {
    public final id = "fingers.work";
    public final name = [
        en => "Fingers Work"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/fingers.work/",
            meta: [
                "about" => "I need space, i go space.",
                "categories" => [
                    "Arts and crafts shop",
                    "Brand"
                ],
                "addr" => "牛頭角大業街27號鴻盛工業大廈12/F 03室",
                "area" => "Hong Kong",
                "email" => "852fingerswork@gmail.com",
                "id" => "1732597250294445"
            ]
        },
        {
            url: "https://www.instagram.com/fingers.work/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/fingers.work/photos/a.1732599826960854/2581914952029333/"
        },
        {
            url: "https://www.facebook.com/fingers.work/posts/2560273647526797"
        }
    ];
    public final tags:Array<Tag> = [];
}

