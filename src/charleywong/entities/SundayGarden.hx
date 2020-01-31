package charleywong.entities;

class SundayGarden implements Entity {
    public final id = "SundayGarden2016";
    public final name = [
        en => "Sunday Garden"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/SundayGarden2016/",
            meta: [
                "about" => "手作布藝 • 頭帶\nSince 2016 • HONG KONG\n歡迎訂製...\n\n\n\nSee more",
                "categories" => [
                    "Retail company"
                ],
                "email" => "sundaygarden2016@gmail.com",
                "tel" => "55440874",
                "id" => "595535060627513"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/SundayGarden2016/photos/a.606190036228682/1357100347804310/"
        },
        {
            url: "https://www.facebook.com/SundayGarden2016/posts/1237953023052377"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

