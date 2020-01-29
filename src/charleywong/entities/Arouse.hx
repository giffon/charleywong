package charleywong.entities;

class Arouse implements Entity {
    public final id = "arousehk";
    public final name = [
        en => "A rouse"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/arousehk/",
            meta: [
                "about" => "KCCA 韓國蠟燭工藝導師，CLAB 烘焙蠟燭導師；\n並修畢台灣文化大學天然調香初階、PlentyPetals Aroma Design Junior Class。",
                "categories" => [
                    "Product/service",
                    "Arts and crafts shop",
                    "Home decor"
                ],
                "email" => "arousehk@gmail.com",
                "id" => "102448174533070"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/arousehk/posts/135350751242812"
        }
    ];
    public final tags:Array<Tag> = [];
}

