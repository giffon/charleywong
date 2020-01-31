package charleywong.entities;

class YamanakaYuko implements Entity {
    public final id = "Yamanaka.Yuko";
    public final name = [
        zh => "山中遊子"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Yamanaka.Yuko/",
            meta: [
                "about" => "山野中遊走, 尋一刻自由",
                "categories" => [
                    "Artist"
                ],
                "email" => "shanchungyauchi@gmail.com",
                "id" => "215119718572501"
            ]
        },
        {
            url: "https://www.instagram.com/yamanaka_yuko/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Yamanaka.Yuko/posts/2310869868997465"
        },
        {
            url: "https://www.facebook.com/Yamanaka.Yuko/photos/a.259324260818713/2448966371854480/"
        },
        {
            url: "https://www.facebook.com/Yamanaka.Yuko/posts/2434544579963326"
        },
        {
            url: "https://www.facebook.com/Yamanaka.Yuko/posts/2381765848574533"
        },
        {
            url: "https://www.facebook.com/Yamanaka.Yuko/videos/652121238629425/"
        }
    ];
    public final tags:Array<Tag> = [
        media,
        artist
    ];
}

