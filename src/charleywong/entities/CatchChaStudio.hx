package charleywong.entities;

class CatchChaStudio implements Entity {
    public final id = "CatchCha";
    public final name = [
        en => "CatchCha Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.catchcha.com.hk"
        },
        {
            url: "https://www.facebook.com/CatchCha/",
            meta: [
                "id" => "1420656751573167",
                "about" => "Every event deserves a fun corner and CatchCha is your perfect solution.",
                "categories" => [
                    "Photographer",
                    "Party supply and rental shop",
                    "Event planner"
                ],
                "addr" => "Flat G6, 2/F, Wang Kwong Industrial Building, 45 Hung To Road, Kwun Tong, KLN",
                "area" => "Hong Kong",
                "email" => "enquiry@catchcha.com.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CatchCha/photos/a.1439535293018646/2158954324410069/"
        }
    ];
}

