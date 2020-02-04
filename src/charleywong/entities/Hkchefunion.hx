package charleywong.entities;

class Hkchefunion implements Entity {
    public final id = "hkchefunion";
    public final name = [
        zh => "香港廚師聯盟"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hkchefunion/",
            meta: [
                "id" => "915894651774540",
                "about" => "香港廚師聯盟",
                "categories" => [
                    "Non-profit organisation"
                ],
                "email" => "hkchefunionenquiry@gmail.com",
                "tel" => "64847871"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkchefunion/videos/2468434103374214/"
        },
        {
            url: "https://www.facebook.com/hkchefunion/posts/2546004875430168"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}

