package charleywong.entities;

class Gregorywong implements Entity {
    public final id = "gregory-wong";
    public final name = [
        en => "gregory wong",
        zh => "王宗堯"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/260003335677/",
            meta: [
                "about" => "香港, 英國, 台灣, 日本再回流... 演員, 喜歡寫東西, 想要拍自己的電影, 想要以後有自己的製作..",
                "categories" => [
                    "Artist"
                ],
                "id" => "260003335677"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=10157068513735678&id=260003335677"
        },
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=10156861624130678&id=260003335677"
        }
    ];
    public final tags:Array<Tag> = [];
}

