package charleywong.entities;

class MrPoop implements Entity {
    public final id = "poop.mr";
    public final name = [
        en => "Mr. Poop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/poop.mr/",
            meta: [
                "id" => "542523705881337",
                "about" => "hihi,\n歡迎來到一粒poop的思考領域。",
                "categories" => [
                    "Writer"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/poop.mr/posts/1860282374105457"
        },
        {
            url: "https://www.facebook.com/poop.mr/photos/a.542559779211063/1716873791779650/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

