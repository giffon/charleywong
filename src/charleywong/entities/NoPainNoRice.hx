package charleywong.entities;

class NoPainNoRice implements Entity {
    public final id = "NoPainNoRice";
    public final name = [
        zh => "生存之稻",
        en => "Offbeat Village"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/NoPainNoRice/",
            meta: [
                "categories" => [
                    "Arts and crafts shop",
                    "Visual arts",
                    "Community"
                ],
                "email" => "teresa@offbeatvillage.com",
                "id" => "957706304272856"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/NoPainNoRice/photos/a.959422204101266/2673426736034129/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

