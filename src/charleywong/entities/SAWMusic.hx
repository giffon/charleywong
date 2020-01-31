package charleywong.entities;

class SAWMusic implements Entity {
    public final id = "sawmusichk";
    public final name = [
        en => "S.A.W Music"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/sawmusichk/",
            meta: [
                "id" => "118162532350",
                "about" => "S.A.W MUSIC\n元朗區Band房出租及樂器教學\n專業導師樂器教學,樂器維修,Band房出租,樂器及配件銷售...等\ntel: 51770963 / 22051022",
                "categories" => [
                    "Musical instrument store",
                    "Art school",
                    "Performance & event venue"
                ],
                "addr" => "香港元朗喜業街7-11A號 嘉華工業大廈506室",
                "area" => "Yuen Long",
                "email" => "seitolucifer@gmail.com",
                "tel" => "51770963"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sawmusichk/posts/10157940722507351"
        },
        {
            url: "https://www.facebook.com/sawmusichk/posts/10157395360877351"
        },
        {
            url: "https://www.facebook.com/sawmusichk/photos/a.10150441766607351/10157910444997351/"
        }
    ];
    public final tags:Array<Tag> = [
        music,
        shop
    ];
}

