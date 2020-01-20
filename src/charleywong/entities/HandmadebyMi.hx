package charleywong.entities;

class HandmadebyMi implements Entity {
    public final id = "handmadebymi";
    public final name = [
        en => "Handmade by {Mi}*"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/handmadebymi/",
            meta: [
                "about" =>
                "Album Aroma Art Beautiful Candle Card Color Craft Create Design Dream Elegant Enjoy Floral Frame Friends Gifts Handmade Happiness Heart Love Memory Mi Original Paper Photography Precious Scrapbook Share Smile Stationery Stylish TailorMade Wedding Unique",
                "categories" => [
                    "Product/service",
                    "Art",
                    "Event"
                ],
                "email" => "handmadebymi@outlook.com"
            ]
        },
        {
            url: "https://www.instagram.com/handmadebymi/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/handmadebymi/photos/a.175711175851632/2593075680781824/"
        },
        {
            url: "https://www.facebook.com/handmadebymi/photos/a.397117723710975/2587456588010400/"
        }
    ];
}

