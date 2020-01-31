package charleywong.entities;

class YoyoYipMakeUp implements Entity {
    public final id = "yoyoyipmakeup";
    public final name = [
        en => "Yoyo Yip Make Up"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.yoyoyipmakeup.com"
        },
        {
            url: "https://www.facebook.com/yoyoyipmakeup/",
            meta: [
                "id" => "393542627361107",
                "about" => "Bridal Makeup | Bridesmaids Makeup | Fashion Makeup",
                "categories" => [
                    "Makeup artist"
                ],
                "addr" => "801, 275 Des Voeux Road Central Sheung Wan",
                "area" => "Hong Kong",
                "tel" => "98550771"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/yoyoyipmakeup/photos/a.413559352026101/2459199057462110/"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding
    ];
}

