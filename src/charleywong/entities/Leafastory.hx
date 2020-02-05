package charleywong.entities;

class Leafastory implements Entity {
    public final id = "leafastory";
    public final name = [
        zh => "阿樹"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/leafastory/",
            meta: [
                "id" => "355905167931962",
                "about" => "如果發現生活不再有趣，大概是時候找一個對的故事，讓生命再來一遍。",
                "categories" => [
                    "Writer"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/leafastory/posts/1239412129581257"
        },
        {
            url: "https://www.facebook.com/leafastory/posts/1157708167751654"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

