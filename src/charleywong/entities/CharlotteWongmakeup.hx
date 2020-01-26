package charleywong.entities;

class CharlotteWongmakeup implements Entity {
    public final id = "charlottewongmakeup";
    public final name = [
        en => "Charlotte Wong makeup"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.charlottewongmakeup.com"
        },
        {
            url: "https://www.facebook.com/charlottewongmakeup/",
            meta: [
                "id" => "594865747231347",
                "about" => "歡迎查詢各類化妝服務\n及半永久紋繡服務",
                "categories" => [
                    "Community"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/charlottewongmakeup/posts/2726572104060690"
        }
    ];
}

