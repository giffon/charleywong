package charleywong.entities;

class Zicafe2015 implements Entity {
    public final id = "zicafe2015";
    public final name = [
        zh => "只",
        en => "zi"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/zicafe2015/",
            meta: [
                "id" => "909928052390889",
                "about" => "一個地方\n簡單食物\n日活日常...\n\n\n\nSee more",
                "categories" => [
                    "Tea room",
                    "Diner"
                ],
                "addr" => "Room 402, Wai Wah Building, 1 Granville circuit",
                "area" => "Tsim Sha Tsui",
                "email" => "info.zicafe@gmail.com",
                "tel" => "23251115"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/zicafe2015/photos/a.1009361462447547/2729756173741392/"
        },
        {
            url: "https://www.facebook.com/zicafe2015/photos/a.1009361462447547/2812121862171489/"
        },
        {
            url: "https://www.facebook.com/zicafe2015/photos/a.1009361462447547/2721046384612371/"
        }
    ];
    public final tags:Array<Tag> = [];
}

