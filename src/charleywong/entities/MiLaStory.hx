package charleywong.entities;

class MiLaStory implements Entity {
    public final id = "milastory";
    public final name = [
        en => "MiLa Story"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://mila-story.com"
        },
        {
            url: "https://www.facebook.com/milastory/",
            meta: [
                "id" => "310785152409489",
                "about" => "We\'re all about celebrating the love and stories we\'ve always cherished.",
                "categories" => [
                    "Photographer",
                    "Wedding planning service"
                ],
                "email" => "storytomila@gmail.com",
                "tel" => "56904986"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/milastory/posts/1455798097908183"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}

