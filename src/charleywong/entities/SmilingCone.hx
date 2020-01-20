package charleywong.entities;

class SmilingCone implements Entity {
    public final id = "smilingcone";
    public final name = [
        en => "Smiling Cone"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/smilingcone/",
            meta: [
                "about" => "香港原創品牌 (2012)\n陶瓷飾物 | 器具 | 插畫 | 故事\n-...\n\n\n\n\n\n\nSee more",
                "categories" => [
                    "Art",
                    "Accessories",
                    "Arts and crafts shop"
                ],
                "email" => "smilingcone@gmail.com",
                "tel" => "60973326"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/smilingcone/photos/a.170289739816328/1354431604735463/"
        },
        {
            url: "https://www.facebook.com/smilingcone/photos/a.170289739816328/1351360711709219/"
        }
    ];
}

