package charleywong.entities;

class SpinnerofYarns implements Entity {
    public final id = "spinnerofyarns.choicegame";
    public final name = [
        en => "Spinner of Yarns"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://twitter.com/of_yarns"
        },
        {
            url: "https://www.facebook.com/spinnerofyarns.choicegame/",
            meta: [
                "id" => "104490284290345",
                "about" => "The official page of Spinner of Yarns.",
                "categories" => [
                    "App Page",
                    "Games/toys",
                    "Literary arts"
                ],
                "email" => "spinnerofyarns.choicegame@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/spinnerofyarns.choicegame/posts/144642093608497"
        }
    ];
}

