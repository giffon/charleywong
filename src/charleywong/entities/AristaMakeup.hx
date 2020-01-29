package charleywong.entities;

class AristaMakeup implements Entity {
    public final id = "AristaMakeUp";
    public final name = [
        en => "Arista Make up"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/AristaMakeUp/",
            meta: [
                "id" => "283814335066666",
                "about" => "提供新娘化妝，姊妹化妝，晚宴化妝，謝師宴化妝，歡迎查詢package!\n♥Mobile/ whatsapp: 97202016",
                "categories" => [
                    "Professional service"
                ],
                "tel" => "97202016"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/AristaMakeUp/photos/a.476971385750959/2519778771470200/"
        }
    ];
    public final tags:Array<Tag> = [];
}

