package charleywong.entities;

class APCoffeeHK implements Entity {
    public final id = "1204451109711692";
    public final name = [
        en => "AP Coffee HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/1204451109711692/",
            meta: [
                "id" => "1204451109711692",
                "categories" => [
                    "Coffee shop",
                    "Restaurant"
                ],
                "addr" => "54 Main Street, Ap Lei Chau",
                "area" => "Aberdeen, Hong Kong",
                "tel" => "98849231"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/1204451109711692/photos/a.1228226797334123/1522179391272194/"
        },
        {
            url: "https://www.facebook.com/1204451109711692/photos/a.1228226797334123/1505111909645609/"
        },
        {
            url: "https://www.facebook.com/1204451109711692/photos/a.1228226797334123/1492287624261371/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

