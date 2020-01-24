package charleywong.entities;

class Wontonmeen implements Entity {
    public final id = "wontonmeen";
    public final name = [
        en => "Wontonmeen"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.wontonmeen.com"
        },
        {
            url: "https://www.facebook.com/wontonmeen/",
            meta: [
                "id" => "106468316075354",
                "about" => "Your alternative Hong Kong experience...\nCome to 135 Lai Chi Kok Road.",
                "categories" => [
                    "Hostel",
                    "Community"
                ],
                "addr" => "135 Lai Chi Kok Road",
                "area" => "Kowloon, Hong Kong",
                "email" => "info@wontonmeen.com",
                "tel" => "69040918"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/wontonmeen/photos/a.117148428340676/2420128818042614/"
        },
        {
            url: "https://www.facebook.com/wontonmeen/photos/a.117148428340676/2322503877805109/"
        }
    ];
}

