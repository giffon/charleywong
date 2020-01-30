package charleywong.entities;

class JarGor1996 implements Entity {
    public final id = "JarGor1996";
    public final name = [
        zh => "渣哥 一九九六"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/jargor1996/"
        },
        {
            url: "https://www.facebook.com/JarGor1996/",
            meta: [
                "about" => "【渣哥一九九六】\n銅鑼灣店\n渣甸街30號...\n\n\n\n\n\n\n\n\n\nSee more",
                "categories" => [
                    "Fast food restaurant",
                    "Food stall",
                    "Breakfast & brunch restaurant"
                ],
                "id" => "611333408944704"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/JarGor1996/posts/2749294345148589"
        },
        {
            url: "https://www.facebook.com/JarGor1996/posts/2589848901093135"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

