package charleywong.entities;

class IntervalCoffeeBar implements Entity {
    public final id = "intervalcoffeebar";
    public final name = [
        en => "Interval Coffee Bar"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/intervalcoffeebar/",
            meta: [
                "about" => "Nestled inside PRESET, INTERVAL Coffee Bar is a chic creative hub and a fashionable mingling hotspot to be seen.",
                "categories" => [
                    "Cafe",
                    "Bar"
                ],
                "addr" => "UG/F, 33 Wellington Street",
                "area" => "Central, Hong Kong",
                "email" => "info@presetspaces.com",
                "tel" => "25707568",
                "id" => "122214585098105"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/intervalcoffeebar/photos/a.140907076562189/387731541879740/"
        },
        {
            url: "https://www.facebook.com/intervalcoffeebar/photos/a.140907076562189/361542341165327/"
        }
    ];
}

