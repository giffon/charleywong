package charleywong.entities;

class Charmcharmchu implements Entity {
    public final id = "charmcharmchu";
    public final name = [
        zh => "慘慘豬",
        en => "CharmCharmChu"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.youtube.com/user/charmcharmchu"
        },
        {
            url: "https://www.facebook.com/charmcharmchu/",
            meta: [
                "id" => "168461220591",
                "about" => "從二零零九 .戇鳩地玩認真鞭擊金屬\nWe wrote thrash metal songs with cowbell. Deal with it.",
                "categories" => [
                    "Musician/band"
                ],
                "email" => "charmcharmchu.thrash@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/charmcharmchu/posts/10156584747420592"
        },
        {
            url: "https://www.facebook.com/charmcharmchu/posts/10156576187275592"
        }
    ];
    public final tags:Array<Tag> = [
        music
    ];
}

