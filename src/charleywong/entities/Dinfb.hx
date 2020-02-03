package charleywong.entities;

class Dinfb implements Entity {
    public final id = "din.fb";
    public final name = [
        zh => "靛"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.e-din.com"
        },
        {
            url: "https://www.facebook.com/din.fb/",
            meta: [
                "id" => "25275709565",
                "about" => "香港多功能創作人，身兼插畫師、設計師及小說作家。\n「繪畫是一趟永不完結的旅程，人生走到哪裡、揮筆興之所畫，認識自己與世界之關係。」\nhttp://www.e-din.com\nhttp://www.instagram.com/ddddinnnn",
                "categories" => [
                    "Artist"
                ],
                "email" => "e.dindin@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/din.fb/photos/a.66479789565/10157256151494566/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

