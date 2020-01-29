package charleywong.entities;

class Hksankala implements Entity {
    public final id = "hksankala";
    public final name = [
        zh => "香港山旮旯及野地生態摘記",
        en => "Hong Kong Sankala & Her Wildlife"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hksankala/",
            meta: [
                "about" => "網誌「香港山旮旯」之facebook專頁，記有香港山野種種及境外登山遊記；另設有附屬網誌「香港野地生態摘記」。",
                "categories" => [
                    "Blogger"
                ],
                "id" => "374893759310475"
            ]
        },
        {
            url: "https://www.instagram.com/hksankala/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hksankala/posts/1797780973688406"
        }
    ];
    public final tags:Array<Tag> = [];
}

