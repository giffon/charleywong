package charleywong.entities;

class Tentosenmakeup implements Entity {
    public final id = "tentosenmakeup";
    public final name = [
        en => "Ten to sen makeup"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/tentosenmakeup/",
            meta: [
                "id" => "1079179685449888",
                "about" => "A Professional Makeup and Hairstyling Service.\nWith a personal concept , which everyone born to be unique .",
                "categories" => [
                    "Makeup artist"
                ],
                "addr" => "Hong Kong",
                "area" => "Hong Kong",
                "tel" => "98384149"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tentosenmakeup/posts/2768370999864073"
        }
    ];
}

