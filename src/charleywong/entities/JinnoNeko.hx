package charleywong.entities;

class JinnoNeko implements Entity {
    public final id = "jinnoneko";
    public final name = [
        en => "Jinno Neko",
        zh => "神野猫"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/279914545362892/",
            meta: [
                "about" => "Bamboo framework artist and Illustrator",
                "categories" => [
                    "Artist",
                    "News and media website"
                ],
                "email" => "jinnoneko@gmail.com",
                "id" => "279914545362892"
            ]
        },
        {
            url: "https://www.instagram.com/jinnoneko/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=2481695878518070&id=279914545362892"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

