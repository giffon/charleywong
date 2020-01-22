package charleywong.entities;

class RainInTimeHK implements Entity {
    public final id = "RainInTimeHK";
    public final name = [
        zh => "及時雨"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://rainintime.bandcamp.com"
        },
        {
            url: "https://www.facebook.com/RainInTimeHK/",
            meta: [
                "about" => "- 音樂在於我們是瞬雷不及之雨 -\nNEW ALBUM AVAILABLE NOW!\nhttps://rainintime.bandcamp.com/",
                "categories" => [
                    "Musician/band"
                ],
                "id" => "188911834455855"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/RainInTimeHK/photos/a.619580581388976/3161304340549908/"
        },
        {
            url: "https://www.facebook.com/RainInTimeHK/posts/3070531036293906"
        }
    ];
}

