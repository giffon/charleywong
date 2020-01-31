package charleywong.entities;

class Shinkohk implements Entity {
    public final id = "shinkohk";
    public final name = [
        zh => "申子居酒屋",
        en => "Shinko"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/shinkohk/",
            meta: [
                "id" => "772272223122335",
                "categories" => [
                    "Diner",
                    "Sushi Restaurant"
                ],
                "addr" => "黑布街74-76號地下1號舖",
                "area" => "Hong Kong",
                "email" => "shinkoizahaya@gmail.com",
                "tel" => "59989188"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/shinkohk/posts/1010089809340574"
        },
        {
            url: "https://www.facebook.com/shinkohk/posts/1016908481992040"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

