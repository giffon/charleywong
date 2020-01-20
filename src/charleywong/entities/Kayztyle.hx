package charleywong.entities;

class Kayztyle implements Entity {
    public final id = "kayztyle";
    public final name = [
        zh => "其一文創",
        en => "Kayztyle"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kayztyle/",
            meta: [
                "about" => "深水埗西九龍中心7樓7170&7171號（旗艦店）\n\nMonday - Friday ： 2pm - 6:30pm...\n\n\nSee more",
                "categories" => [
                    "Product/service"
                ],
                "email" => "kayztyle@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/Kayztylehk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kayztyle/posts/2536050696429963"
        },
        {
            url: "https://www.facebook.com/kayztyle/posts/2413207898714244"
        }
    ];
}

