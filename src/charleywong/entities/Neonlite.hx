package charleywong.entities;

class Neonlite implements Entity {
    public final id = "neonlitehk";
    public final name = [
        en => "Neonlite"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/neonlitehk/",
            meta: [
                "categories" => [
                    "Home decor",
                    "Product/service"
                ],
                "tel" => "68557416",
                "id" => "1843374929288014"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/neonlitehk/photos/a.1848627158762791/2419648588327309/"
        },
        {
            url: "https://www.facebook.com/neonlitehk/photos/a.1913481432277363/2414491605509674/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

