package charleywong.entities;

class Yipyatchee implements Entity {
    public final id = "yipyatchee";
    public final name = [
        zh => "葉一知"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/yipyatchee/",
            meta: [
                "id" => "1422334891347196",
                "categories" => [
                    "Blogger",
                    "Author"
                ],
                "email" => "yipyatchee@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/yipyatchee/posts/2514611958786145"
        }
    ];
}

