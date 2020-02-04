package charleywong.entities;

class PrintHouseHK implements Entity {
    public final id = "PrintHouseHk1";
    public final name = [
        en => "Print House HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.printhou.se"
        },
        {
            url: "https://www.facebook.com/PrintHouseHk1/",
            meta: [
                "id" => "663408503737996",
                "about" =>
                "Established as a t-shirt printing company by trade, we don’t see just clothes, we see a lifestyle- one that you design, and we help you create.",
                "categories" => [
                    "Local business"
                ],
                "addr" => "Sing Teck Factory Building, 44 Wong Chuk Hang Road, Wong Chuk Hang",
                "area" => "Hong Kong",
                "email" => "info@print-house.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/PrintHouseHk1/photos/a.729841013761411/2370424929703003/"
        }
    ];
    public final tags:Array<Tag> = [
        printing,
        clothing
    ];
}

