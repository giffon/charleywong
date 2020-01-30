package charleywong.entities;

class Laitattatwing implements Entity {
    public final id = "Laitattatwing";
    public final name = [
        en => "Lai Tat Tat Wing",
        zh => "黎達達榮"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Laitattatwing/",
            meta: [
                "id" => "49137156921",
                "categories" => [
                    "Artist"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Laitattatwing/posts/10156185547836922"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

