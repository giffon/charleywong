package charleywong.entities;

class Goodnighttm implements Entity {
    public final id = "goodnight.tm";
    public final name = [
        zh => "良宵",
        en => "GoodNight"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/goodnight.tm/",
            meta: [
                "id" => "108873250621344",
                "about" => "一晚就能體驗香港地道與法國風情",
                "categories" => [
                    "Food stall"
                ],
                "addr" => "屯門仁愛堂街60號幸福樓三期地下30號鋪",
                "area" => "Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/goodnight.tm/photos/a.123011765874159/125416038967065/"
        },
        {
            url: "https://www.facebook.com/goodnight.tm/photos/a.121140042727998/126938008814868/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

