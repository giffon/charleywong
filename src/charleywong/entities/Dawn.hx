package charleywong.entities;

class Dawn implements Entity {
    public final id = "dawncoffeenbrunch";
    public final name = [
        en => "Dawn"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/dawncoffeenbrunch/",
            meta: [
                "about" => "Work Hard\nTo Make You Feel Special\nCoffee & Australian-style brunch",
                "categories" => [
                    "Coffee shop",
                    "Breakfast & brunch restaurant"
                ],
                "addr" => "233 Fa Yuen Street, Edmund\'s Mansion, G/F, Shop A",
                "area" => "Hong Kong",
                "email" => "dawnbrunchncoffee@gmail.com",
                "tel" => "25699918",
                "id" => "887735904892298"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/dawncoffeenbrunch/photos/a.908672002798688/1036268310039056/"
        },
        {
            url: "https://www.facebook.com/dawncoffeenbrunch/photos/a.911806235818598/988326618166559/"
        },
        {
            url: "https://www.facebook.com/dawncoffeenbrunch/photos/a.911806235818598/915065742159314/"
        },
        {
            url: "https://www.facebook.com/dawncoffeenbrunch/photos/a.911806235818598/911806215818600/"
        }
    ];
    public final tags:Array<Tag> = [];
}

