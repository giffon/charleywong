package charleywong.entities;

class YannieCheungMakeup implements Entity {
    public final id = "yanniemakeup";
    public final name = [
        en => "Yannie Cheung Makeup"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://yyimage.wixsite.com/yanniemakeup"
        },
        {
            url: "https://www.facebook.com/yanniemakeup/",
            meta: [
                "id" => "1453853211566920",
                "about" => "Yannie Cheung Makeup 化妝團隊提供各類化妝服務，多年經驗，為你帶來不一樣的自己。",
                "categories" => [
                    "Makeup artist",
                    "Local service"
                ],
                "addr" => "觀塘駿業里8號世貿大廈13樓1315室",
                "area" => "Kwun Tong",
                "email" => "yanyi1003@gmail.com",
                "tel" => "60355520"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/yanniemakeup/posts/2507595976192633"
        }
    ];
    public final tags:Array<Tag> = [];
}

