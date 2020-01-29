package charleywong.entities;

class ACAHKUSU implements Entity {
    public final id = "ACAHKUSU";
    public final name = [
        zh => "香港大學學生會動漫聯盟",
        en => "The Animation and Comics Association, HKUSU"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ACAHKUSU/",
            meta: [
                "about" => "本會的動漫圖書館提供近八千本漫畫及輕小說借閱，同時動漫聯盟亦致力籌辦各種活動，全面推廣動漫文化。",
                "categories" => [
                    "Event",
                    "Community",
                    "Organisation"
                ],
                "addr" => "薄扶林道",
                "area" => "Hong Kong",
                "email" => "acabox@hku.hk",
                "tel" => "66910632",
                "id" => "217103381724423"
            ]
        },
        {
            url: "https://www.instagram.com/acahkusu/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ACAHKUSU/photos/a.218919221542839/1878294668938611/"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}
