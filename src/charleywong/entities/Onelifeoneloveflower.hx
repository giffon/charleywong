package charleywong.entities;

class Onelifeoneloveflower implements Entity {
    public final id = "35590112380";
    public final name = [
        en => "1life1loveflower"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.1life1loveflower.com"
        },
        {
            url: "https://www.facebook.com/35590112380/",
            meta: [
                "id" => "35590112380",
                "about" => "又係貓屋又係花店，係花店度找貓貓，係貓屋度買花花",
                "categories" => [
                    "Product/service",
                    "Patio/garden"
                ],
                "tel" => "29888561"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/35590112380/photos/a.10152267822587381/10157695043302381/"
        },
        {
            url: "https://www.facebook.com/35590112380/photos/a.10152267822587381/10157695076347381/"
        }
    ];
    public final tags:Array<Tag> = [
        florist
    ];
}

