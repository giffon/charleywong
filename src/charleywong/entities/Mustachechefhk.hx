package charleywong.entities;

class Mustachechefhk implements Entity {
    public final id = "Mustachechefhk";
    public final name = [
        zh => "鬍鬚仔",
        en => "Mustache Chef"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/mustachechefhk/"
        },
        {
            url: "https://www.facebook.com/Mustachechefhk/",
            meta: [
                "id" => "2259054677670397",
                "about" => "#長發街市#鬍鬚仔#認住大廚兩捌鬚就一定唔會去錯",
                "categories" => [
                    "Burger restaurant",
                    "Barbecue restaurant",
                    "Italian restaurant"
                ],
                "email" => "mustachechefhk@gmail.com",
                "tel" => "67632308"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Mustachechefhk/photos/a.2268151360094062/2464029647172898/"
        },
        {
            url: "https://www.facebook.com/Mustachechefhk/photos/a.2268151360094062/2414587235450473/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

