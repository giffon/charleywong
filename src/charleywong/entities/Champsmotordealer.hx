package charleywong.entities;

class Champsmotordealer implements Entity {
    public final id = "champsmotordealer";
    public final name = [
        en => "Champs Motor Dealer",
        zh => "松栓汽車"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/champsmotordealer/",
            meta: [
                "id" => "523304664394788",
                "about" => "-香港政府認可註冊進口商及分銷商\n-HKSAR Registered Motor Vehicle Importer and Distributor\n...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Motor vehicle company",
                    "Automotive repair centre",
                    "Vehicle dealership"
                ],
                "addr" => "錦田公路DD111, LOT2162S.B.",
                "area" => "Hong Kong",
                "email" => "champs.motor@gmail.com",
                "tel" => "67617878"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/champsmotordealer/posts/2438093039582598"
        }
    ];
    public final tags:Array<Tag> = [
        automobile
    ];
}

