package charleywong.entities;

class Hotcarshk implements Entity {
    public final id = "hotcarshk";
    public final name = [
        zh => "車狂熱",
        en => "HotCars"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hotcarshk/",
            meta: [
                "id" => "706174722837687",
                "about" => "我地Hotcars專門提供日本進口汽車,維修保養,代訂正宗日本製造汽車零件及各國改裝零件",
                "categories" => [
                    "Vehicle customisation shop",
                    "Automotive wholesaler"
                ],
                "email" => "hotcarstrading@yahoo.com.hk",
                "tel" => "97910390"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hotcarshk/photos/a.713108968810929/2451039848351157/"
        },
        {
            url: "https://www.facebook.com/hotcarshk/photos/a.713108968810929/2247634795358331/"
        }
    ];
    public final tags:Array<Tag> = [
        automobile
    ];
}

