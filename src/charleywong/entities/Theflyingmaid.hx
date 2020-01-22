package charleywong.entities;

class Theflyingmaid implements Entity {
    public final id = "theflyingmaid";
    public final name = [
        zh => "空中飛傭",
        en => "The Flying Maid"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/theflyingmaid/",
            meta: [
                "about" => "我係一個空少！又係繪本作家！\n航空界WE CONNECT！\n香港人加油！",
                "categories" => [
                    "Blogger"
                ],
                "email" => "theflyingmaid@gmail.com",
                "id" => "1449053002063039"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/theflyingmaid/photos/a.1449060175395655/2162011887433810/"
        }
    ];
}

