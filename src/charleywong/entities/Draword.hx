package charleywong.entities;

class Draword implements Entity {
    public final id = "Draword";
    public final name = [
        en => "Draword"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.drawordstudio.com"
        },
        {
            url: "https://www.facebook.com/Draword/",
            meta: [
                "id" => "604629562888487",
                "about" => "香港書法設計者，用文字結緣。\n文字分享．書法教學．手寫製品盡在\ndrawordstudio.com\n歡迎轉載，務請標記來源@draword。",
                "categories" => [
                    "Artist"
                ],
                "email" => "drawordteaching@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Draword/photos/a.613162078701902/3072850239399728/"
        },
        {
            url: "https://www.facebook.com/Draword/photos/a.641564215861688/3514444708573610/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

