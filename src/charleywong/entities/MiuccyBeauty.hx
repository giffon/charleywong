package charleywong.entities;

class MiuccyBeauty implements Entity {
    public final id = "miuccybeauty";
    public final name = [
        en => "Miuccy Beauty"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/miuccybeauty/",
            meta: [
                "id" => "456885131185863",
                "categories" => [
                    "Beauty salon",
                    "Makeup artist"
                ],
                "email" => "miuccymakeup@gmail.com",
                "tel" => "97307329"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/miuccybeauty/photos/a.456976824510027/1233210830219952/"
        }
    ];
}

