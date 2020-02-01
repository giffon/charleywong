package charleywong.entities;

class HongKongMetalAlliance implements Entity {
    public final id = "HKMetalAlliance";
    public final name = [
        en => "Hong Kong Metal Alliance"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/HKMetalAlliance/",
            meta: [
                "id" => "151539854978719",
                "about" => "2012 autumn, a new chapter of Hong Kong Metal...",
                "categories" => [
                    "Organisation"
                ],
                "email" => "hkmetalalliance@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/hongkongmetalalliance/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HKMetalAlliance/photos/a.167066183426086/1752755908190431/"
        }
    ];
    public final tags:Array<Tag> = [
        music,
        organization
    ];
}

