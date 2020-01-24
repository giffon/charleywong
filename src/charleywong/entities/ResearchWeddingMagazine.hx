package charleywong.entities;

class ResearchWeddingMagazine implements Entity {
    public final id = "researchwedding";
    public final name = [
        en => "Research Wedding Magazine"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.researchwedding.com"
        },
        {
            url: "https://www.facebook.com/researchwedding/",
            meta: [
                "id" => "1212366048917503",
                "about" => "A Hong Kong based wedding magazine for sophisticated brides.",
                "categories" => [
                    "News and media website"
                ],
                "email" => "info@researchwedding.com"
            ]
        },
        {
            url: "https://www.instagram.com/research_wedding/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/researchwedding/posts/1383008175186622"
        },
        {
            url: "https://www.facebook.com/researchwedding/posts/1467498600070912"
        }
    ];
}

