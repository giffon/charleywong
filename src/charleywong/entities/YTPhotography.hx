package charleywong.entities;

class YTPhotography implements Entity {
    public final id = "ytphotographyhk";
    public final name = [
        en => "YT Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/ytphotographyhk/"
        },
        {
            url: "https://www.facebook.com/ytphotographyhk/",
            meta: [
                "id" => "1131157050344081",
                "categories" => [
                    "Photographer",
                    "Product/service",
                    "Camera/photo"
                ],
                "email" => "ytphotography.hk@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ytphotographyhk/posts/2322080654585042"
        }
    ];
}

