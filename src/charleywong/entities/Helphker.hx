package charleywong.entities;

class Helphker implements Entity {
    public final id = "helphker";
    public final name = [
        zh => "如水救援"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/helphker/",
            meta: [
                "id" => "105076180972900",
                "about" => "如水救援以最高的效率直接幫助予有需要的人",
                "categories" => [
                    "Local service"
                ],
                "email" => "helphker@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/helphker/posts/130548855092299"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}

