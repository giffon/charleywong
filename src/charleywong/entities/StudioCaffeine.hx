package charleywong.entities;

class StudioCaffeine implements Entity {
    public final id = "StudioCaffeine";
    public final name = [
        en => "Studio Caffeine"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/StudioCaffeine/",
            meta: [
                "about" => "Studio Caffeine是一間售賣精品咖啡和舉辦咖啡工作坊為主的咖啡廳。",
                "categories" => [
                    "Coffee shop",
                    "Breakfast & brunch restaurant"
                ],
                "addr" => "284 Temple Street (Near Austin Road)",
                "area" => "Tsim Sha Tsui",
                "email" => "info@studiocaffeine.com.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/StudioCaffeine/posts/2440904946153519"
        }
    ];
}

