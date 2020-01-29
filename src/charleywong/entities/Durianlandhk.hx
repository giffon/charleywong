package charleywong.entities;

class Durianlandhk implements Entity {
    public final id = "durianland.hk";
    public final name = [
        en => "Durian Land",
        zh => "榴槤樂園"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/durianland.hk/",
            meta: [
                "id" => "1412290928916945",
                "categories" => [
                    "Dessert shop",
                    "Theme restaurant"
                ],
                "addr" => "92, Kimberley Rd, Tsim Sha Tsui, Hong Kong.",
                "area" => "Tsim Sha Tsui",
                "email" => "info@durianland.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/durianland.hk/photos/a.1412312925581412/1920572204755479/"
        },
        {
            url: "https://www.facebook.com/durianland.hk/posts/1974033282742704"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

