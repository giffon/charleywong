package charleywong.entities;

class Kyeongheum implements Entity {
    public final id = "kyeongheum";
    public final name = [
        zh => "京欽",
        en => "KyeongHeum"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kyeongheum/",
            meta: [
                "about" => "Hi, I\'m KyeongHeum from Korea.\nI take photos, and make videos.",
                "categories" => [
                    "Video creator"
                ],
                "email" => "kyeongheum@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/http%3A%2F%2Finstagram.com%2Fkyeongheum/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kyeongheum/videos/2221139501529676/"
        }
    ];
}

