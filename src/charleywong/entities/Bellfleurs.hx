package charleywong.entities;

class Bellfleurs implements Entity {
    public final id = "bellfleurs";
    public final name = [
        en => "Bellfleurs"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/bellfleurs/",
            meta: [
                "id" => "190114028118468",
                "about" => "| B E L L F L E U R S |\nby Bell Chan\n\nflowers come to life",
                "categories" => [
                    "Product/service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bellfleurs/photos/a.661702840959582/784969698632895/"
        }
    ];
}

