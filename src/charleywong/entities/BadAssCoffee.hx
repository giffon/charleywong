package charleywong.entities;

class BadAssCoffee implements Entity {
    public final id = "BadAssCoffeeHK";
    public final name = [
        en => "Bad Ass Coffee"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/BadAssCoffeeHK/",
            meta: [
                "about" =>
                "Japanese Specialties coffee dealer.\n\nOur beans are roasted in Japan and ship to Hong Kong once it been made.\n\nUnique . Unbalance . Unbearable",
                "categories" => [
                    "Pub"
                ],
                "id" => "333013757116292"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/BadAssCoffeeHK/photos/a.336621523422182/862474077503588/"
        },
        {
            url: "https://www.facebook.com/BadAssCoffeeHK/posts/848483828902613"
        }
    ];
}

