package charleywong.entities;

class CoffeeSlave implements Entity {
    public final id = "CoffeeSlavehk";
    public final name = [
        en => "Coffee Slave"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/CoffeeSlavehk/",
            meta: [
                "about" => "位於觀塘工業區\n係一個不太起眼既位置,有一間不太起眼既咖啡店\n入面有一班對於咖啡及食物有一定要求既年輕人\n希望用心去沖一杯咖啡或整一碟意粉\n為呢個香港及觀塘區既朋友加油打打氣",
                "categories" => [
                    "Coffee shop"
                ],
                "addr" => "Workshop 2A Ground Floor, Hung Tat Industrial Building, 43 Hung To Road, Kwun Tong, Kowloon.",
                "area" => "Hong Kong",
                "email" => "info@coffeeslaves.com",
                "tel" => "36195788",
                "id" => "647801469001643"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CoffeeSlavehk/posts/754142998367489"
        },
        {
            url: "https://www.facebook.com/CoffeeSlavehk/posts/807486269699828"
        }
    ];
    public final tags:Array<Tag> = [];
}

