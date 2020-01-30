package charleywong.entities;

class MakeupMelMel implements Entity {
    public final id = "melchanmua";
    public final name = [
        en => "Makeup MelMel"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/melchanmua/"
        },
        {
            url: "https://www.facebook.com/melchanmua/",
            meta: [
                "id" => "1800260230235999",
                "about" => "Makeup MelMel . 貓\n\n; somethin\' simple...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Makeup artist"
                ],
                "email" => "judymelmua@gmail.com",
                "tel" => "90368810"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/melchanmua/photos/a.1815477598714262/2371062483155768/"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding
    ];
}

