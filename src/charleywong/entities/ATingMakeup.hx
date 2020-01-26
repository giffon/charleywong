package charleywong.entities;

class ATingMakeup implements Entity {
    public final id = "ATingmakeup";
    public final name = [
        en => "ATing Makeup"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ATingmakeup/",
            meta: [
                "id" => "299522723418072",
                "about" => "提供新娘化妝/宴會化妝/姊妹化妝等",
                "categories" => [
                    "Health/beauty"
                ],
                "email" => "ating.makeup@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ATingmakeup/photos/a.533339256703083/2800954199941566/"
        }
    ];
}

