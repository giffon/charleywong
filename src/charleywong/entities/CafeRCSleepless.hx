package charleywong.entities;

class CafeRCSleepless implements Entity {
    public final id = "caferncsleepless";
    public final name = [
        en => "Cafe R&C Sleepless"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/caferncsleepless/",
            meta: [
                "about" => "#come as a guest , leave as a friend.\n#we don\'t make coffee , we create coffee.\n#catering #workshop #reservation #marketing",
                "categories" => [
                    "Coffee shop",
                    "Breakfast & brunch restaurant"
                ],
                "addr" => "G/F, 22&24 Haven Street , Causeway Bay",
                "area" => "Causeway Bay",
                "email" => "cafernc@gmail.com",
                "tel" => "28909838",
                "id" => "132225386819663"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/caferncsleepless/photos/a.146098188765716/2843059475736227/"
        },
        {
            url: "https://www.facebook.com/caferncsleepless/photos/a.146098188765716/3320624271313076/"
        },
        {
            url: "https://www.facebook.com/caferncsleepless/photos/a.146098188765716/3277788748929962/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

