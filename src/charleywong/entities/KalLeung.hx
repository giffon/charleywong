package charleywong.entities;

class KalLeung implements Entity {
    public final id = "hangmadephoto";
    public final name = [
        en => "Hangmade photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hangmadephoto/",
            meta: [
                "about" => "I\'m HANG.",
                "categories" => [
                    "Professional service"
                ],
                "email" => "hang@hangmade.hk",
                "tel" => "93344185",
                "id" => "872088682853899"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hangmadephoto/photos/a.939273229468777/2652676581461758/"
        },
        {
            url: "https://www.facebook.com/hangmadephoto/posts/2643943225668427"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}

