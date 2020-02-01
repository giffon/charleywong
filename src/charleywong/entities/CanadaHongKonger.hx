package charleywong.entities;

class CanadaHongKonger implements Entity {
    public final id = "CanadaHongKonger";
    public final name = [
        zh => "加拿大香港人",
        en => "Canada HongKonger"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/CanadaHongKonger/",
            meta: [
                "id" => "111761829489839",
                "about" => "莫忘香港",
                "categories" => [
                    "Non-profit organisation"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CanadaHongKonger/posts/477583249574360"
        },
        {
            url: "https://www.facebook.com/CanadaHongKonger/posts/426700427995976"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

