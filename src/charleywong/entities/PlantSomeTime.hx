package charleywong.entities;

class PlantSomeTime implements Entity {
    public final id = "PlantSomeTime";
    public final name = [
        zh => "花時間",
        en => "Plant Some Time"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/PlantSomeTime/",
            meta: [
                "about" => "// 花藝設計 //\n鮮花 ● 絲花 ● 佈置 ● 花飾",
                "categories" => [
                    "Product/service"
                ],
                "addr" => "Room 709, Block B, Po Lung Centre, 11 Wang Chiu Road, Kowloon Bay",
                "area" => "Hong Kong",
                "email" => "info@plantsometime.com",
                "tel" => "56865868"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/PlantSomeTime/posts/2618381628256381"
        }
    ];
}

