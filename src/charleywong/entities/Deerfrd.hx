package charleywong.entities;

class Deerfrd implements Entity {
    public final id = "deerfrd";
    public final name = [
        en => "Deerfrd"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/deerfrd/",
            meta: [
                "about" => "love your pet, love yourself, love the earth",
                "categories" => [
                    "Product/service"
                ],
                "email" => "deerfrd@outlook.com",
                "id" => "605086182887545"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/deerfrd/posts/2571334969595980"
        },
        {
            url: "https://www.facebook.com/deerfrd/posts/2659119124150897"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

