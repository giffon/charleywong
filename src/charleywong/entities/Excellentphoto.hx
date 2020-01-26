package charleywong.entities;

class Excellentphoto implements Entity {
    public final id = "lunexcellentphoto";
    public final name = [
        en => "Excellent photo"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/lunexcellentphoto/",
            meta: [
                "id" => "547013818650836",
                "about" => "從攝影得到快樂,以客為本,令客人簡單輕鬆地完成屬於自己的婚禮.",
                "categories" => [
                    "Photographer"
                ],
                "addr" => "元朗",
                "area" => "九龍",
                "email" => "cheung_holun@yahoo.com.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lunexcellentphoto/posts/2974779649207562"
        }
    ];
}

