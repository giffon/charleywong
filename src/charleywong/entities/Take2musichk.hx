package charleywong.entities;

class Take2musichk implements Entity {
    public final id = "take2musichk";
    public final name = [
        zh => "二次音樂"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://whatsticker.online/p/95299AJ5OQ9f"
        },
        {
            url: "https://www.facebook.com/take2musichk/",
            meta: [
                "id" => "404376656425336",
                "categories" => [
                    "Musician/band"
                ],
                "email" => "cheksiuting@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/take2musichk/photos/a.985986301597699/1141593816036946/"
        },
        {
            url: "https://www.facebook.com/take2musichk/posts/1054667931396202"
        }
    ];
    public final tags:Array<Tag> = [
        music
    ];
}

