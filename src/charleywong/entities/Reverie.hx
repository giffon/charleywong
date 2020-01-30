package charleywong.entities;

class Reverie implements Entity {
    public final id = "ReverieJewellery";
    public final name = [
        en => "Reverie"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ReverieJewellery/",
            meta: [
                "about" => "Reverie is a local handmade brand.\n\n\'REVERIE\' means dream. We hope everyone can persist in their dream like how we did.",
                "categories" => [
                    "Jewellery/watches"
                ],
                "id" => "197131570471528"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ReverieJewellery/photos/a.204518383066180/1526396084211730/"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

