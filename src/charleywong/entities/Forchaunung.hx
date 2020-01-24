package charleywong.entities;

class Forchaunung implements Entity {
    public final id = "forchaunung";
    public final name = [
        en => "N.Maker",
        zh => "製作工場"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/forchaunung/",
            meta: [
                "id" => "1433650736849932",
                "about" => "-模型代工\n-模型教學\n-陳列室",
                "categories" => [
                    "Games/toys"
                ],
                "email" => "nerv.maker@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/forchaunung/posts/2438621076352888"
        }
    ];
}

