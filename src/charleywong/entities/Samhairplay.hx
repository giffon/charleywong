package charleywong.entities;

class Samhairplay implements Entity {
    public final id = "samhairplay";
    public final name = [
        en => "Samhairplay",
        zh => "玩髮日記"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/samhairplay/",
            meta: [
                "id" => "703461553088118",
                "about" => "Im Sam ✂ Hair Dresser HK TST\n\n.在這個時尚急速變化的時代 ...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Personal blog",
                    "Professional service"
                ],
                "tel" => "60976177"
            ]
        },
        {
            url: "https://www.instagram.com/sam_hairplay_/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.instagram.com/p/B5AcTY3B8fb/"
        },
        {
            url: "https://www.instagram.com/p/B4UsRgqh-XF/"
        },
        {
            url: "https://www.instagram.com/p/ByxX4JOhUVq/"
        }
    ];
    public final tags:Array<Tag> = [
        salon
    ];
}

