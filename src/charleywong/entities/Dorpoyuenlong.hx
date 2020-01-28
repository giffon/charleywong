package charleywong.entities;

class Dorpoyuenlong implements Entity {
    public final id = "dorpo.yuenlong";
    public final name = [
        zh => "多寶雞蛋仔"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/dorpo.yuenlong/",
            meta: [
                "id" => "312224202695385",
                "categories" => [
                    "Deli",
                    "Food stall",
                    "Restaurant"
                ],
                "addr" => "擊壤路9號 金寶大廈 G/F 11 號鋪",
                "area" => "Yuen Long",
                "tel" => "95504855"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/dorpo.yuenlong/photos/a.312314262686379/521614611756342/"
        },
        {
            url: "https://www.facebook.com/dorpo.yuenlong/photos/a.312314262686379/513518302565973/"
        }
    ];
}

