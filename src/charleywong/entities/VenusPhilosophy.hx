package charleywong.entities;

class VenusPhilosophy implements Entity {
    public final id = "venusphilosophy";
    public final name = [
        en => "Venus Philosophy"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/venusphilosophy/",
            meta: [
                "about" => "/ 只想創造出有感染力的作品",
                "categories" => [
                    "Just for fun"
                ],
                "email" => "lowingszevenus0505@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/venusphilosophy/posts/2643472192437768"
        },
        {
            url: "https://www.facebook.com/venusphilosophy/posts/2612478675537120"
        }
    ];
}

