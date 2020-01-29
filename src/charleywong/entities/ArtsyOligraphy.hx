package charleywong.entities;

class ArtsyOligraphy implements Entity {
    public final id = "artsyoligraphy";
    public final name = [
        en => "Artsy Oligraphy"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/artsyoligraphy/",
            meta: [
                "categories" => [
                    "Artist"
                ],
                "id" => "332336587363380"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/artsyoligraphy/photos/a.332340977362941/537083636888673/"
        },
        {
            url: "https://www.facebook.com/artsyoligraphy/posts/526724091257961"
        }
    ];
    public final tags:Array<Tag> = [];
}

