package charleywong.entities;

class Gymzacdonhk implements Entity {
    public final id = "gymzacdon.hk";
    public final name = [
        en => "GYMZACDON",
        zh => "健身的事"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/gymzacdon.hk/",
            meta: [
                "id" => "1629330164029830",
                "about" => "Personal Instagram: jimzacdon",
                "categories" => [
                    "Coach",
                    "Gym/Physical fitness centre",
                    "Fitness trainer"
                ],
                "email" => "gymzacdon@gmail.com",
                "tel" => "53736331"
            ]
        },
        {
            url: "https://www.instagram.com/jimzacdon/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/gymzacdon.hk/posts/2188846994744808"
        },
        {
            url: "https://www.facebook.com/gymzacdon.hk/posts/2106173259678849"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

