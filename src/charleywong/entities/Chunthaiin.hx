package charleywong.entities;

class Chunthaiin implements Entity {
    public final id = "chunthaiin";
    public final name = [
        zh => "珍泰In泰式車仔麵"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/chunthaiin/",
            meta: [
                "id" => "1801887796774506",
                "categories" => [
                    "Thai restaurant",
                    "Theme restaurant",
                    "Diner"
                ],
                "addr" => "九龍大角咀大全街26號",
                "area" => "Kowloon, Hong Kong",
                "tel" => "26969928"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/chunthaiin/photos/a.1802164633413489/2070749086555041/"
        },
        {
            url: "https://www.facebook.com/chunthaiin/photos/a.1802164633413489/2094951830801433/"
        },
        {
            url: "https://www.facebook.com/chunthaiin/photos/a.1802164633413489/2039339129696037/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

