package charleywong.entities;

class MyLittleCoffee implements Entity {
    public final id = "MYLITTLECOFFEE.HK";
    public final name = [
        en => "My Little Coffee"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/MYLITTLECOFFEE.HK/",
            meta: [
                "about" => "扎根於香港最地道旺角好景的「咖啡雜貨鋪」\n。自家烘焙咖啡豆、咖啡膠囊、掛耳包\n。專業咖啡機、器材賣買保養維修\n。家庭式小社企，人手有限\n。支持聾人就業、部份咖啡產品由聾人製造",
                "categories" => [
                    "Coffee shop"
                ],
                "addr" => "旺角花園街2-16號好景商業中心1樓22室",
                "area" => "Mong Kok",
                "email" => "mylittlecoffee.hk@gmail.com",
                "tel" => "34888387",
                "id" => "458731097531829"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MYLITTLECOFFEE.HK/photos/a.464831840255088/3153675241370721/"
        },
        {
            url: "https://www.facebook.com/MYLITTLECOFFEE.HK/photos/a.464539840284288/3121299777941601/"
        },
        {
            url: "https://www.facebook.com/MYLITTLECOFFEE.HK/photos/a.464831840255088/3102330876505158/"
        }
    ];
}

