package charleywong.entities;

class WooholicWeddingDecoration implements Entity {
    public final id = "WooholicWeddingDecoration";
    public final name = [
        en => "Wooholic Wedding Decoration"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://wooholicdecor.wix.com/whdecor"
        },
        {
            url: "https://www.facebook.com/WooholicWeddingDecoration/",
            meta: [
                "id" => "481155398592921",
                "about" => "One Stage One Memory",
                "categories" => [
                    "Consultation agency"
                ],
                "email" => "info@wooholic.com",
                "tel" => "54029118"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/WooholicWeddingDecoration/posts/3179018262139941"
        }
    ];
    public final tags:Array<Tag> = [];
}

