package charleywong.entities;

class Hkgpremiumfood implements Entity {
    public final id = "hkg.premiumfood";
    public final name = [
        zh => "香港高級食品批發(鮮達)",
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://sintat.boutir.com"
        },
        {
            url: "https://www.facebook.com/hkg.premiumfood/",
            meta: [
                "id" => "274071526834929",
                "about" => "香港高級食品批發(鮮達)一站式提供各種高級食品. 我們在世界各地,進口精選肉類食材, 口碑載譽, 信心保證. 歡迎光臨選購.",
                "categories" => [
                    "Food delivery service",
                    "Meat wholesaler",
                    "Health Food Shop"
                ],
                "email" => "sintat.foods@gmail.com",
                "tel" => "39969024"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkg.premiumfood/photos/a.277162553192493/440173643558049/"
        },
        {
            url: "https://www.facebook.com/hkg.premiumfood/photos/a.285634545678627/408435460065201/"
        },
        {
            url: "https://www.facebook.com/hkg.premiumfood/photos/a.277162553192493/420053042236776/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

