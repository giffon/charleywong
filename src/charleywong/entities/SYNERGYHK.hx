package charleywong.entities;

class SYNERGYHK implements Entity {
    public final id = "synergyhongkong";
    public final name = [
        en => "SYNERGY HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.youtube.com/channel/UCHA0N2e58X7A238Gzz-1Nqg"
        },
        {
            url: "https://www.facebook.com/synergyhongkong/",
            meta: [
                "id" => "389668444433407",
                "about" => "Hong Kong Progressive Metal\nVocal : Tyler\nBass : Manson\nDrum : Howard\nGuitar : Davey & Long",
                "categories" => [
                    "Musician/band"
                ],
                "email" => "synergyprog@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/synergyprog/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/synergyhongkong/photos/a.607674729299443/2630926553640907/"
        },
        {
            url: "https://www.facebook.com/synergyhongkong/photos/a.607674729299443/2700935819973313/"
        }
    ];
    public final tags:Array<Tag> = [
        music
    ];
}

