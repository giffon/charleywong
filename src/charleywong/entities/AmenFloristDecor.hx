package charleywong.entities;

class AmenFloristDecor implements Entity {
    public final id = "AmenFloristDecor";
    public final name = [
        en => "Amen Florist & Decor"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/AmenFloristDecor/",
            meta: [
                "about" => "Amen Florist & Decor",
                "categories" => [
                    "Florist",
                    "Shopping & retail",
                    "Event planner"
                ],
                "addr" => "1/F, 3 YUEN NGAI STREET, MONG KOK, KOWLOON",
                "area" => "Hong Kong",
                "email" => "info@amenfloristdecor.com",
                "id" => "370492093032321"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/AmenFloristDecor/posts/2584157948332380"
        },
        {
            url: "https://www.facebook.com/AmenFloristDecor/photos/a.372723966142467/2577588345656007/"
        },
        {
            url: "https://www.facebook.com/AmenFloristDecor/videos/464294894216746/"
        }
    ];
    public final tags:Array<Tag> = [
        florist
    ];
}

