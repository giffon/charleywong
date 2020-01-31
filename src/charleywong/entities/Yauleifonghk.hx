package charleywong.entities;

class Yauleifonghk implements Entity {
    public final id = "yauleifonghk";
    public final name = [
        zh => "友利坊"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/yauleifonghk/",
            meta: [
                "id" => "477182976130644",
                "categories" => [
                    "Chinese restaurant"
                ],
                "addr" => "九龍新蒲崗康強街21-23號地下",
                "area" => "Wong Tai Sin, Hong Kong",
                "email" => "yauleifonghk@gmail.com",
                "tel" => "23386830"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/yauleifonghk/photos/a.819870205195251/828733407642264/"
        },
        {
            url: "https://www.facebook.com/yauleifonghk/photos/a.819870205195251/819870128528592/"
        },
        {
            url: "https://www.facebook.com/yauleifonghk/videos/479846386249841/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

