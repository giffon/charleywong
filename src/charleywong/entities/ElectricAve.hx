package charleywong.entities;

class ElectricAve implements Entity {
    public final id = "electricavehk";
    public final name = [
        en => "Electric Ave"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/electricavehk/",
            meta: [
                "id" => "846555018811380",
                "about" => "The best burgers in Hong Kong reside at this location. Stunning flavour combos can be expected as well as top notch ingredients.",
                "categories" => [
                    "Burger restaurant",
                    "Fast food restaurant"
                ],
                "addr" => "301 Queen’s Road West, Sai Ying Pun, Western District",
                "area" => "Sai Ying Pun",
                "tel" => "28588883"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/electricavehk/photos/a.865961870204028/1849310661869139/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

