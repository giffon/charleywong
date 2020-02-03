package charleywong.entities;

class Blackheartmuseum implements Entity {
    public final id = "blackheartmuseum";
    public final name = [
        zh => "黑心博物館"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/blackheartmuseum/",
            meta: [
                "id" => "592122644216288",
                "about" => "挖掘內心中的黑，\n在大眾面前展覽，\n只想讓參觀者，...\n\n\n\n\nSee more",
                "categories" => [
                    "Arts & humanities website"
                ],
                "email" => "blackheartmuseum@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/blackheartmuseum/posts/2209621112466425"
        },
        {
            url: "https://www.facebook.com/blackheartmuseum/posts/2127751913986679"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

