package charleywong.entities;

class HongKongArtistUnion implements Entity {
    public final id = "HongKongArtistUnion";
    public final name = [
        zh => "香港藝術家工會",
        en => "Hong Kong Artist Union"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/HongKongArtistUnion/",
            meta: [
                "id" => "544653842394916",
                "about" => "歡迎所有人關注 香港藝術家工會 專頁，會員和非會員。\nPlease like this page for the updated news of Hong Kong Artist Union, members and non-members.",
                "categories" => [
                    "Organisation"
                ],
                "email" => "hongkongartistunion@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HongKongArtistUnion/photos/a.591105931083040/1348308772029415/"
        },
        {
            url: "https://www.facebook.com/HongKongArtistUnion/photos/a.591105931083040/1323980171128942/"
        }
    ];
    public final tags:Array<Tag> = [
        organization,
        artist
    ];
}

