package charleywong.entities;

class Ohmysweetday implements Entity {
    public final id = "ohmysweetday";
    public final name = [
        en => "Oh my sweet day"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ohmysweetday/",
            meta: [
                "id" => "270042213145923",
                "about" => "用小小創意\n自製場地佈景拍攝",
                "categories" => [
                    "Interest"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ohmysweetday/posts/1558220200994778"
        }
    ];
}

