package charleywong.entities;

class Smallpotatodostuff implements Entity {
    public final id = "smallpotatodostuff";
    public final name = [
        zh => "熱血小薯做小事"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/smallpotatodostuff/",
            meta: [
                "id" => "2312898555618061",
                "about" => "一班熱血有餘，能力不足的中年人。\n希望用圖像去改變世界，幫助香港。",
                "categories" => [
                    "Art"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/smallpotatodostuff/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/smallpotatodostuff/posts/2318140391760544"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

