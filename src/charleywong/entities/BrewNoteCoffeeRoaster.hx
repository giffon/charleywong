package charleywong.entities;

class BrewNoteCoffeeRoaster implements Entity {
    public final id = "brewnotecoffee";
    public final name = [
        en => "Brew Note Coffee Roaster"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/brewnotecoffee/",
            meta: [
                "about" =>
                "A Local Micro Roaster offer seasonal direct trade coffee beans, fresh roasting and different brewing methods to present better sensory experience",
                "categories" => [
                    "Coffee shop",
                    "Restaurant"
                ],
                "email" => "brewnotecoffeeroaster@gmail.com",
                "tel" => "25629990",
                "id" => "662180230527735"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/brewnotecoffee/posts/2662871073791964"
        },
        {
            url: "https://www.facebook.com/brewnotecoffee/posts/2556542921091447"
        }
    ];
    public final tags:Array<Tag> = [];
}

