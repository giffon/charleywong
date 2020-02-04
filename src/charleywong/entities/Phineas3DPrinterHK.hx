package charleywong.entities;

class Phineas3DPrinterHK implements Entity {
    public final id = "Phineas3DP";
    public final name = [
        en => "Phineas 3D Printer HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.thingiverse.com/thing:1416635"
        },
        {
            url: "https://www.facebook.com/Phineas3DP/",
            meta: [
                "id" => "661968140609015",
                "about" => "3D printer design and manufacturer in Hong Kong.\n#3D #Printer #3Dprinter #3dp #3dprinterhk #hk #hongkong",
                "categories" => [
                    "Product/service",
                    "Electronics",
                    "Art"
                ],
                "email" => "phineas3dp@gmail.com",
                "tel" => "26872749"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Phineas3DP/posts/1452426238229864"
        },
        {
            url: "https://www.facebook.com/Phineas3DP/posts/1377847025687786"
        }
    ];
    public final tags:Array<Tag> = [
        printing3d
    ];
}

