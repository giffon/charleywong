package charleywong.entities;

class NatMakeupStudio implements Entity {
    public final id = "natmakeupstudio";
    public final name = [
        en => "Nat Makeup Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/natmakeupstudio/",
            meta: [
                "id" => "1804008463010479",
                "about" => "• 專業修眉\n• 化妝髮型服務\n...\n\n\n\n\nSee more",
                "categories" => [
                    "Makeup artist"
                ],
                "email" => "natmakeupstudio@gmail.com",
                "tel" => "65740309"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/natmakeupstudio/photos/a.1804019139676078/2462352940509358/"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding
    ];
}

