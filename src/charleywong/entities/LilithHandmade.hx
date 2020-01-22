package charleywong.entities;

class LilithHandmade implements Entity {
    public final id = "lilith.skincare";
    public final name = [
        en => "Lilith Handmade"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/lilith.skincare/",
            meta: [
                "categories" => [
                    "Beauty, cosmetic & personal care"
                ],
                "email" => "lilithandmade.com@gmail.com",
                "tel" => "51226604",
                "id" => "2222820081316544"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lilith.skincare/photos/a.2230618037203415/2437445493187334/"
        }
    ];
}

