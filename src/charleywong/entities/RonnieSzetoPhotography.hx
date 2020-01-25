package charleywong.entities;

class RonnieSzetoPhotography implements Entity {
    public final id = "ronnieszetophotography";
    public final name = [
        en => "Ronnie Szeto Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.ronnieszeto.com"
        },
        {
            url: "https://www.facebook.com/ronnieszetophotography/",
            meta: [
                "id" => "643580232416370",
                "about" => "Hong Kong and Taiwan based Documentary Wedding and Family Photographer . Member of WPJA & FPJA . Travel Worldwide .",
                "categories" => [
                    "Photographer"
                ],
                "email" => "ronnieszetohk@gmail.com",
                "tel" => "92001233"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ronnieszetophotography/posts/2526007440840297"
        }
    ];
}

