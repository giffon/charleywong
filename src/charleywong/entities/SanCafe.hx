package charleywong.entities;

class SanCafe implements Entity {
    public final id = "seancafehk";
    public final name = [
        en => "Séan Cafe"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/seancafehk/",
            meta: [
                "about" => "Sean cafe have nice flower tea",
                "categories" => [
                    "Asian fusion restaurant",
                    "American restaurant",
                    "Deli"
                ],
                "id" => "443256846128544"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/seancafehk/posts/803815860072639"
        }
    ];
    public final tags:Array<Tag> = [];
}

