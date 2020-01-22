package charleywong.entities;

class Goodafternoonwork implements Entity {
    public final id = "goodafternoonwork";
    public final name = [
        en => "Goodafternoonwork"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/goodafternoonwork/",
            meta: [
                "about" => "Small hand-craft work for a goodafternoon",
                "categories" => [
                    "Local business"
                ],
                "email" => "hello@goodafternoonwork.com",
                "id" => "156234564479324"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/goodafternoonwork/posts/2107898125979615"
        },
        {
            url: "https://www.facebook.com/goodafternoonwork/photos/a.160941840675263/2054680931301335/"
        }
    ];
}

