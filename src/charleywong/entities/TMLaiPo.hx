package charleywong.entities;

class TMLaiPo implements Entity {
    public final id = "TMLaiPo";
    public final name = [
        en => "Rainbow Cuisine",
        zh => "彩虹煮意"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/TMLaiPo/",
            meta: [
                "id" => "424128724735099",
                "about" => "堅持、信念 。",
                "categories" => [
                    "Restaurant"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/TMLaiPo/posts/756589524822349"
        },
        {
            url: "https://www.facebook.com/TMLaiPo/posts/793049674509667"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

