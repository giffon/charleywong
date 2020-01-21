package charleywong.entities;

class LockeroomDining implements Entity {
    public final id = "2283579918591559";
    public final name = [
        en => "Lockeroom Dining"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/2283579918591559/",
            meta: [
                "about" => "Pasta Steak Dessert",
                "categories" => [
                    "Steakhouse",
                    "Theme restaurant",
                    "Continental restaurant"
                ],
                "addr" => "旺角砵蘭街215號朗晴坊8樓",
                "area" => "Hong Kong",
                "email" => "lockeroom.dining@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/2283579918591559/photos/a.2289950434621174/2555467041402844/"
        }
    ];
}

