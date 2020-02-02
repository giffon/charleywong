package charleywong.entities;

class OPENMEAL implements Entity {
    public final id = "OPENMEAL";
    public final name = [
        en => "Open Meal",
        zh => "開餐"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.open-meal.com"
        },
        {
            url: "https://www.facebook.com/OPENMEAL/",
            meta: [
                "id" => "202954889784690",
                "about" => "OPEN MEAL 生蠔刺身速遞專門店",
                "categories" => [
                    "Professional service"
                ],
                "tel" => "60867229"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/OPENMEAL/posts/2591609957585826"
        },
        {
            url: "https://www.facebook.com/OPENMEAL/posts/2726864814060339"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

