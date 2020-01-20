package charleywong.entities;

class Mosssunsun implements Entity {
    public final id = "mosssunsun";
    public final name = [
        zh => "毛鬙鬙",
        en => "Mosssunsun"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mosssunsun/",
            meta: [
                "about" => "本品牌專注於手工火熔細工,燒製玻璃工藝 , 每個作品都獨一無二。",
                "categories" => [
                    "Arts and crafts shop",
                    "Jewellery/watches"
                ],
                "tel" => "60159976"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mosssunsun/photos/a.225981994586283/680215155829629/"
        }
    ];
}

