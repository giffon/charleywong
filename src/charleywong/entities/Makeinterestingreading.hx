package charleywong.entities;

class Makeinterestingreading implements Entity {
    public final id = "makeinterestingreading";
    public final name = [
        zh => "書生百用"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://chitchitphilosophy.blogspot.hk"
        },
        {
            url: "https://www.facebook.com/makeinterestingreading/",
            meta: [
                "id" => "2054342341501416",
                "about" => "書生百用。有趣、有用、有深度，是這裡的宗旨。在繁忙的生活中，陪你一起輕輕鬆鬆讀點書。",
                "categories" => [
                    "Writer"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/makeinterestingreading/photos/a.2054575691478081/2531749823760663/"
        },
        {
            url: "https://www.facebook.com/makeinterestingreading/posts/2520268761575436"
        },
        {
            url: "https://www.facebook.com/makeinterestingreading/posts/2507225046213141"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

