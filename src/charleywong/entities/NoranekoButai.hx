package charleywong.entities;

class NoranekoButai implements Entity {
    public final id = "NoranekoButai";
    public final name = [
        zh => "野良猫部隊",
        en => "Noraneko Butai"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/NoranekoButai/",
            meta: [
                "about" => "為愛香港的你打氣，為有質素又愛香港的小店打氣，香港人加油！",
                "categories" => [
                    "Blogger"
                ],
                "email" => "noranonekobutai@gmail.com",
                "id" => "106309970765061"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/NoranekoButai/photos/a.106496330746425/172628897466501/"
        },
        {
            url: "https://www.facebook.com/NoranekoButai/photos/a.110491943680197/153293529400038/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

