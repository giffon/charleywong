package charleywong.entities;

class MyBalloon implements Entity {
    public final id = "myballoonhk";
    public final name = [
        en => "My Balloon"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.myballoon.com.hk"
        },
        {
            url: "https://www.facebook.com/myballoonhk/",
            meta: [
                "id" => "1262784247107591",
                "about" => "MyBalloon 為你提供色彩繽紛的氣球服務",
                "categories" => [
                    "Shopping & retail"
                ],
                "addr" => "香港觀塘鴻圖道55號幸運工業大廈",
                "area" => "Kowloon, Hong Kong",
                "email" => "myballoonhk@gmail.com",
                "tel" => "61474876"
            ]
        },
        {
            url: "https://www.instagram.com/myballoonhk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/myballoonhk/posts/2685957261456942"
        },
        {
            url: "https://www.facebook.com/myballoonhk/photos/a.1445057612213586/2660876977298304/"
        },
        {
            url: "https://www.facebook.com/myballoonhk/posts/2660057227380279"
        }
    ];
    public final tags:Array<Tag> = [
        shop,
        wedding
    ];
}

