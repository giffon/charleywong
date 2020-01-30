package charleywong.entities;

class HollyBrown implements Entity {
    public final id = "hollybrowncoffee";
    public final name = [
        en => "Holly Brown"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hollybrowncoffee.com"
        },
        {
            url: "https://www.facebook.com/hollybrowncoffee/",
            meta: [
                "about" => "Specialty coffee and amazing dessert/gelato",
                "categories" => [
                    "Coffee shop",
                    "Restaurant"
                ],
                "email" => "infohollybrown@gmail.com",
                "tel" => "28699008",
                "id" => "110646632314057"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hollybrowncoffee/posts/2828181430560550"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

