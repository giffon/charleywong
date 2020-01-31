package charleywong.entities;

class Underbidding implements Entity {
    public final id = "underbidding";
    public final name = [
        zh => "黑材料"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/underbidding/",
            meta: [
                "id" => "303668637132303",
                "about" => "反送中",
                "categories" => [
                    "Just for fun"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/underbidding/posts/577981113034386"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

