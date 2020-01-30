package charleywong.entities;

class KlausPhotography implements Entity {
    public final id = "klausphotog";
    public final name = [
        en => "Klaus Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/klausphotog/",
            meta: [
                "id" => "1202593923107562",
                "about" => "We capture, we create, we play.",
                "categories" => [
                    "Photographer"
                ],
                "email" => "klausc852@gmail.com",
                "tel" => "55473330"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/klausphotog/posts/2862809597085978"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}

