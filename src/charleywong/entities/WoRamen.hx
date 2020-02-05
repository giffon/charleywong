package charleywong.entities;

class WoRamen implements Entity {
    public final id = "WoRamen";
    public final name = [
        zh => "和拉麵"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/WoRamen/",
            meta: [
                "id" => "125120641523914",
                "categories" => [
                    "Ramen Restaurant"
                ],
                "addr" => "大埔運頭街20-26號港安大廈地下j鋪",
                "area" => "Hong Kong",
                "email" => "rolfcheng1983@hotmail.com",
                "tel" => "29881335"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/WoRamen/posts/458108688225106"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

