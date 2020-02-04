package charleywong.entities;

class AspireUpperRoom implements Entity {
    public final id = "Aspire.UpperRooms";
    public final name = [
        en => "Aspire Upper Room"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.aspireupperroom.com"
        },
        {
            url: "https://www.facebook.com/Aspire.UpperRooms/",
            meta: [
                "id" => "323597045215267",
                "about" => "自修。創作。共享空間\n2小時免費體驗| 2日Weekday Plan只需$115\n租房低至每小時$88起 | 租場每小時$1,000...\n\n\n\n\nSee more",
                "categories" => [
                    "Non-profit organisation"
                ],
                "email" => "info@aspireupperroom.com",
                "tel" => "97244485"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Aspire.UpperRooms/photos/a.323604381881200/400430454198592/"
        },
        {
            url: "https://www.facebook.com/Aspire.UpperRooms/photos/a.345335986374706/407316636843307/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

