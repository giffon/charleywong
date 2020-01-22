package charleywong.entities;

class HonHahaTravel implements Entity {
    public final id = "hon-haha-travel";
    public final name = [
        zh => "攀山攝水"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/226438750894778/",
            meta: [
                "about" => "攀山、攝水\n透過遠足活動及相片分享，讓更多人了解及欣賞大自然生態和攝影。",
                "categories" => [
                    "Travel company"
                ],
                "id" => "226438750894778"
            ]
        },
        {
            url: "https://hon-haha-travel.blogspot.com/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=1098128143725830&id=226438750894778"
        }
    ];
}

