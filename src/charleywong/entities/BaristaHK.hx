package charleywong.entities;

class BaristaHK implements Entity {
    public final id = "baristahk";
    public final name = [
        en => "Barista HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://baristahk.com"
        },
        {
            url: "https://www.facebook.com/baristahk/",
            meta: [
                "id" => "287097018056681",
                "about" =>
                "Official Website - http://baristahk.com\nClass Booking - http://baristahk.com/calendar/\nSharing the fun that Coffee can create with EVERYONE!",
                "categories" => [
                    "Consultation agency",
                    "Food consultant",
                    "Shopping & retail"
                ],
                "addr" => "Unit J, 26/F, Shield Industrial Centre, 84-92 Chai Wan Kok Street",
                "area" => "Tsuen Wan, Hong Kong",
                "email" => "info@baristahk.com",
                "tel" => "39967283"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/baristahk/photos/a.339811742785208/2115794825186882/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

