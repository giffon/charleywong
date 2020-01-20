package charleywong.entities;

class HelloWong implements Entity {
    public final id = "HelloWong";
    public final name = [
        en => "Hello Wong"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/HelloWong/",
            meta: [
                "about" => "skihalo@gmail.com\ni am a freelance graphic designer & illustrator :)\n純粹懶灰諧,太認真既人唔啱睇\n畫想畫既畫,輕鬆看待每件事",
                "categories" => [
                    "Artist"
                ],
                "email" => "skihalo@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HelloWong/posts/2616092528498800"
        }
    ];
}

