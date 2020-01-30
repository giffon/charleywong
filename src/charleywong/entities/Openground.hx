package charleywong.entities;

class Openground implements Entity {
    public final id = "opengroundhk";
    public final name = [
        en => "openground"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/opengroundhk/",
            meta: [
                "about" => "A Design Portal\nwith\nCoffee, ...\n\n\n\n\n\n\n\nSee more",
                "categories" => [
                    "Coffee shop",
                    "Community"
                ],
                "addr" => "198 Tai Nan Street, Sham Shui Po",
                "area" => "Kowloon, Hong Kong",
                "email" => "info@openground.hk",
                "tel" => "39745098",
                "id" => "659145181112976"
            ]
        },
        {
            url: "https://www.instagram.com/openground_hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/opengroundhk/posts/982729405421217"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

