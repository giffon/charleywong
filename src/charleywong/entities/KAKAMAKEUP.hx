package charleywong.entities;

class KAKAMAKEUP implements Entity {
    public final id = "kakakamakeup";
    public final name = [
        en => "KAKA MAKEUP"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kakakamakeup/",
            meta: [
                "id" => "316305695218720",
                "about" => "● Bridal Makeup\n● Wedding Portraits\n● Commercial Functions\n● Whatsapp : 5611-6721\n● Email : kakacheung18@gmail.com",
                "categories" => [
                    "Makeup artist"
                ],
                "email" => "kakachueng18@gmail.com",
                "tel" => "56116721"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kakakamakeup/posts/1264360597079887"
        }
    ];
    public final tags:Array<Tag> = [];
}

