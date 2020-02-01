package charleywong.entities;

class Canwebereasonable implements Entity {
    public final id = "canwebereasonable";
    public final name = [
        zh => "可不可以"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/canwebereasonable/",
            meta: [
                "id" => "763726583749425",
                "about" =>
                "我話過依度係教育機構，講嚟有用我會講，鬧嚟發泄就免喇；所以有啲嘢我會追住講，其他嘅，慳返啖氣啦。\n\nCC license 4.0.\nPlease use the share button at facebook la. This is why the button is made for.",
                "categories" => [
                    "Nursery"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/canwebereasonable/photos/a.763748553747228/815794591875957/"
        },
        {
            url: "https://www.facebook.com/canwebereasonable/posts/2048596038595800"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        media
    ];
}

