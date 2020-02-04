package charleywong.entities;

class Holidaywheretogo implements Entity {
    public final id = "holidaywheretogo";
    public final name = [
        zh => "放假去邊度"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/holidaywheretogo/",
            meta: [
                "id" => "244465722617562",
                "about" => "吃喝玩樂",
                "categories" => [
                    "Personal blog"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/holidaywheretogo/posts/795345747529554"
        },
        {
            url: "https://www.facebook.com/holidaywheretogo/photos/a.259724977758303/760144631049666/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

