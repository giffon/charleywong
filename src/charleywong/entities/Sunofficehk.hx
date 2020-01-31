package charleywong.entities;

class Sunofficehk implements Entity {
    public final id = "sunofficehk";
    public final name = [
        zh => "太陽事務",
        en => "Sun Office"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/sunofficehk/",
            meta: [
                "about" => "在太陽底下，做溫暖的事。\n\n/ 藝術計劃 / 設計 / 插畫 / 壁畫 / 環境設計 /",
                "categories" => [
                    "Graphic designer",
                    "Visual arts"
                ],
                "email" => "sunofficehk@gmail.com",
                "id" => "718819308301009"
            ]
        },
        {
            url: "https://www.instagram.com/sunofficehk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sunofficehk/videos/2315485058570589/"
        },
        {
            url: "https://www.facebook.com/sunofficehk/posts/1339437512905849"
        },
        {
            url: "https://www.facebook.com/sunofficehk/photos/a.721757231340550/1342520642597536/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

