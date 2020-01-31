package charleywong.entities;

class WheelsHK implements Entity {
    public final id = "wheelsHK";
    public final name = [
        en => "SparkIndustries",
        zh => "好輪店 車鈴專門店"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/wheelsHK/",
            meta: [
                "id" => "427612457765912",
                "about" => "Spark Industries\n堅尼地城海旁11-15號地下 7號鋪\n電話/ WHATSAPP: 6100 3410...\n\n\n\n\n\n\n\n\nSee more",
                "categories" => [
                    "Cars",
                    "Vehicle parts store",
                    "Wheel & rim repair service"
                ],
                "addr" => "堅尼地城海旁11-15號地下 7號鋪",
                "area" => "Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/wheelsHK/posts/683730485487440"
        },
        {
            url: "https://www.facebook.com/wheelsHK/posts/566771103850046"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

