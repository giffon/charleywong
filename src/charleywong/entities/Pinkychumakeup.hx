package charleywong.entities;

class Pinkychumakeup implements Entity {
    public final id = "pinkychumakeup";
    public final name = [
        en => "Pinky Bridal Hair & Make up"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/pinkychumakeup/",
            meta: [
                "id" => "868134496532352",
                "about" => "Love Young * Love Simple * Love Elegant\n\n提供各類型化妝 ...\n\n\nSee more",
                "categories" => [
                    "Makeup artist",
                    "Skincare service",
                    "Health/beauty"
                ],
                "addr" => "荔枝角永康街55號金百盛中心",
                "area" => "Hong Kong",
                "email" => "pinkychumakeup@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/pinkychumakeup/posts/2778505885495194"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding
    ];
}

