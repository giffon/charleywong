package charleywong.entities;

class Meatusomuchk implements Entity {
    public final id = "meatusomuchk";
    public final name = [
        en => "Meatusomuch",
        zh => "肉念無限"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/meatusomuchk/",
            meta: [
                "id" => "258968578294110",
                "about" => "Meat U So Much\n引發你肉念無限的地方！",
                "categories" => [
                    "Meat Wholesaler",
                    "Kitchen/Cooking"
                ],
                "email" => "meatusomuch@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/meatusomuchk/photos/a.258970241627277/577151489809149/"
        },
        {
            url: "https://www.facebook.com/meatusomuchk/photos/a.258970241627277/558018308389134/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

