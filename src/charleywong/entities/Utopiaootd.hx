package charleywong.entities;

class Utopiaootd implements Entity {
    public final id = "utopiaootd";
    public final name = [
        en => "Utopia ootd"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/utopiaootd/",
            meta: [
                "id" => "358262314572610",
                "about" => "Outfit of the day\nWe love Yoga, Fashion and People",
                "categories" => [
                    "Product/service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/utopiaootd/photos/a.364635510601957/852230808509089/"
        },
        {
            url: "https://www.facebook.com/utopiaootd/photos/a.364635510601957/971912303207605/"
        }
    ];
    public final tags:Array<Tag> = [];
}

