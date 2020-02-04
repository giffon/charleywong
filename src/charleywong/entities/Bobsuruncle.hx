package charleywong.entities;

class Bobsuruncle implements Entity {
    public final id = "bobsuruncle";
    public final name = [
        zh => "煮家男人",
        en => "Bob\'s Your Uncle"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/bobsuruncle/",
            meta: [
                "id" => "257808051054494",
                "about" => "鳩煮。鳩噏。鳩遊。",
                "categories" => [
                    "Just for fun"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/bobsyouruncle1981/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bobsuruncle/posts/1363524040482884"
        },
        {
            url: "https://www.facebook.com/bobsuruncle/posts/1303195553182400"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

