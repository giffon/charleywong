package charleywong.entities;

class Halfwaycoffeehk implements Entity {
    public final id = "halfwaycoffeehk";
    public final name = [
        zh => "半路咖啡",
        en => "Halfway Coffee"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/halfwaycoffeehk/",
            meta: [
                "categories" => [
                    "Coffee shop"
                ],
                "email" => "halfwaycoffee@gmail.com",
                "tel" => "95117197",
                "id" => "1501022636875471"
            ]
        },
        {
            url: "https://www.instagram.com/halfwaycoffee/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/halfwaycoffeehk/photos/a.1507429309568137/2228245624153165/"
        },
        {
            url: "https://www.facebook.com/halfwaycoffeehk/photos/a.1507429309568137/2227862490858145/"
        }
    ];
}

