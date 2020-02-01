package charleywong.entities;

class Cuecounselling implements Entity {
    public final id = "cuecounselling";
    public final name = [
        en => "CUE Counselling and Education Centre",
        zh => "心橋輔導及教育中心"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/cuecounselling/",
            meta: [
                "id" => "1566622050064826",
                "about" => "CUE Counselling and Education Centre\n心橋輔導及教育中心\n\n我們以Person-Center Therapy 人本輔導的三個核心元素為基礎，提供不同形式的輔導及培訓，讓參加者在真誠、關懷和同理的環境中成長。",
                "categories" => [
                    "Social service",
                    "Counsellor",
                    "Education"
                ],
                "email" => "counsellingcue@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cuecounselling/posts/2658657054194648"
        },
        {
            url: "https://www.facebook.com/cuecounselling/photos/a.1576613229065708/2664746416919045/"
        },
        {
            url: "https://www.facebook.com/cuecounselling/posts/2689151001145253"
        }
    ];
    public final tags:Array<Tag> = [
        medical,
        shop
    ];
}

