package charleywong.entities;

class Lovemylazysundays implements Entity {
    public final id = "lovemylazysundays";
    public final name = [
        zh => "山女行",
        en => "Love My Lazy Sundays"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/lovemylazysundays/",
            meta: [
                "about" => "山中之樂要用心去感受，享受山裏的大小事情！感謝山！\nThe Mountain complete me",
                "categories" => [
                    "Personal blog"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lovemylazysundays/posts/2394062120883550"
        },
        {
            url: "https://www.facebook.com/lovemylazysundays/photos/a.1624986947791075/2355504474739315/"
        }
    ];
}

