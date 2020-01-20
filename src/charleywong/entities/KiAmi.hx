package charleywong.entities;

class KiAmi implements Entity {
    public final id = "kiamikiki";
    public final name = [
        en => "Ki.Ami"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kiamikiki/",
            meta: [
                "about" => "whatsapp:66229422\ninstagram:kiamikiki",
                "categories" => [
                    "Product/service"
                ],
                "email" => "kiamikiki@ymail.com",
                "tel" => "66229422"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kiamikiki/posts/2895820540446582"
        }
    ];
}

