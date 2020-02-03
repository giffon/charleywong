package charleywong.entities;

class Animehappyworld implements Entity {
    public final id = "animehappyworld";
    public final name = [
        zh => "一緒に動漫"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/animehappyworld/",
            meta: [
                "id" => "1577232029200023",
                "about" => "一個屬於動漫迷, 有各式各樣動漫情報, 心得的快樂專頁~!",
                "categories" => [
                    "TV programme"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/animehappyworld/posts/2339748579615027"
        },
        {
            url: "https://www.facebook.com/animehappyworld/posts/2362093104047241"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

