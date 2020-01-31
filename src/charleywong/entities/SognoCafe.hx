package charleywong.entities;

class SognoCafe implements Entity {
    public final id = "sognocafeplus";
    public final name = [
        en => "Sogno Cafe+"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/sognocafeplus/",
            meta: [
                "categories" => [
                    "Coffee shop",
                    "Diner",
                    "Dessert shop"
                ],
                "addr" => "威靈頓街97號威利大廈2樓D",
                "area" => "Hong Kong",
                "email" => "sognocafeplus@yahoo.com.hk",
                "tel" => "27579878",
                "id" => "502136729864950"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sognocafeplus/photos/a.505354799543143/2568788683199734/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

