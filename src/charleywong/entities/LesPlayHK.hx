package charleywong.entities;

class LesPlayHK implements Entity {
    public final id = "lesplayhk";
    public final name = [
        en => "Les\'Play HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.lesplayhk.com"
        },
        {
            url: "https://www.facebook.com/lesplayhk/",
            meta: [
                "id" => "889025764567737",
                "about" => "香港首間專為女同志而設的成人用品店，\n落地推廣正面性教育，\n希望讓小眾的聲音和需要亦能被聽見。\n\nFor Girls, By Girls.",
                "categories" => [
                    "Health/beauty"
                ],
                "addr" => "尖沙咀嘉蘭圍5-11號利時商業大廈13樓1305室",
                "area" => "Tsim Sha Tsui",
                "email" => "info@lesplayhk.com",
                "tel" => "91353594"
            ]
        },
        {
            url: "https://www.instagram.com/lesplay_hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lesplayhk/photos/a.1095291283941183/1554472691356371/"
        },
        {
            url: "https://www.facebook.com/lesplayhk/photos/a.1095291283941183/1603963223073984/"
        }
    ];
    public final tags:Array<Tag> = [];
}

