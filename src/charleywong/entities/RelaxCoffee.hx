package charleywong.entities;

class RelaxCoffee implements Entity {
    public final id = "relaxcoffeehk";
    public final name = [
        en => "Relax Coffee"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/relaxcoffeehk/",
            meta: [
                "id" => "298071060807783",
                "about" => "咖啡對我們而言不單是提神飲品，更是享受和品味，以一杯好咖啡作為一天的動力，以咖啡作為人與人溝通的媒介。",
                "categories" => [
                    "Coffee shop",
                    "Product/service"
                ],
                "addr" => "Shop No G06 Ground Floor Life@KCC NOS 72-76 Kwai Cheong Road",
                "area" => "Kwai Chung",
                "email" => "relaxcoffeehk@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/relaxcoffeehk/photos/a.307139556567600/412570696024485/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

