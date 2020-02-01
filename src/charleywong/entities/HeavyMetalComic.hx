package charleywong.entities;

class HeavyMetalComic implements Entity {
    public final id = "HeavyMetalComic";
    public final name = [
        zh => "重金屬",
        en => "Heavy Metal"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.pinterest.com/heavymetalcomic"
        },
        {
            url: "https://www.facebook.com/HeavyMetalComic/",
            meta: [
                "id" => "102359714475505",
                "about" => "IG : https://www.instagram.com/heavymetalcomic/",
                "categories" => [
                    "Art",
                    "Community"
                ],
                "email" => "heavymetalcomic@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HeavyMetalComic/photos/a.102367897808020/172754407436035/"
        },
        {
            url: "https://www.facebook.com/HeavyMetalComic/posts/173078990736910"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

