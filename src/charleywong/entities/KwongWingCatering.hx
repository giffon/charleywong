package charleywong.entities;

class KwongWingCatering implements Entity {
    public final id = "Kwong-Wing-Catering";
    public final name = [
        zh => "光榮飲食",
        en => "Kwong Wing Catering"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/光榮飲食-Kwong-Wing-Catering-116149449769292/",
            meta: [
                "about" => "光榮冰室:\n深井深井村54-55號地下\n荃灣兆和街18號地下...\n\n\n\n\n\n\nSee more",
                "categories" => [
                    "Restaurant"
                ],
                "email" => "gloryfandb@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=146180516766185&id=116149449769292"
        },
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=155408015843435&id=116149449769292"
        }
    ];
}

