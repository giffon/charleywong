package charleywong.entities;

class StudioIncendo implements Entity {
    public final id = "studioincendo";
    public final name = [
        en => "Studio Incendo"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/studioincendo/",
            meta: [
                "id" => "1474101479504603",
                "about" => "Photo for Freedom. Stand with Hong Kong.",
                "categories" => [
                    "News and media website"
                ],
                "email" => "studioincendo@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/studioincendo/posts/2485352445046163"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

