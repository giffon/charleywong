package charleywong.entities;

class BlacksmithStore implements Entity {
    public final id = "blacksmithcoffeeshop";
    public final name = [
        en => "Blacksmith Store"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/blacksmithcoffeeshop/",
            meta: [
                "about" => "Coffee , Tea , Art exhibition",
                "categories" => [
                    "Coffee shop",
                    "Tea room",
                    "Restaurant"
                ],
                "addr" => "No.17, See Cheung Street , Sai Kung , NT",
                "area" => "Sai Kung",
                "email" => "blacksmithcoffeeshop@gmail.com",
                "tel" => "23530039"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/blacksmithcoffeeshop/photos/a.764068910407825/1374469386034438/"
        },
        {
            url: "https://www.facebook.com/blacksmithcoffeeshop/photos/a.764068910407825/1336733546474689/"
        }
    ];
}

