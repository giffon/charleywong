package charleywong.entities;

class Dollylydraw implements Entity {
    public final id = "dollylydraw";
    public final name = [
        zh => "多利繪"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/dollylydraw/",
            meta: [
                "id" => "395887497178588",
                "about" => "喜歡餅乾、牛奶、旅行、朋友、玩偶、森林、跳躍…這些味道的彩色東西\n\nIG：www.instagram.com/dollyly.tk/",
                "categories" => [
                    "Artist",
                    "Art"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/dollylydraw/posts/2055859041181417"
        },
        {
            url: "https://www.facebook.com/dollylydraw/posts/2309687099131942"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

