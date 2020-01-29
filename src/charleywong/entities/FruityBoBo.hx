package charleywong.entities;

class FruityBoBo implements Entity {
    public final id = "fruitybobo";
    public final name = [
        en => "Fruity BoBo"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.fruitybobo.com"
        },
        {
            url: "https://www.facebook.com/fruitybobo/",
            meta: [
                "id" => "143627472493357",
                "about" =>
                "At Fruity BoBo, beautiful fresh fruit direct to your door is soo easy!\nWe would like to develop a caring and healthy delivery platform for audience.",
                "categories" => [
                    "Health Food Shop",
                    "Local service"
                ],
                "email" => "fruitybobohk@gmail.com",
                "tel" => "95590398"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/fruitybobo/posts/1170719939784100"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

