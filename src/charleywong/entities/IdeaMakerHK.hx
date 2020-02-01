package charleywong.entities;

class IdeaMakerHK implements Entity {
    public final id = "ideamakerhk";
    public final name = [
        en => "Idea Maker HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.ideamakerhk.com"
        },
        {
            url: "https://www.facebook.com/ideamakerhk/",
            meta: [
                "id" => "603514526399384",
                "about" => "為香港大小朋友分享最inn既Maker，3D Printing, 設計思維及創意解難。",
                "categories" => [
                    "Local business"
                ],
                "addr" => "香港九龍新蒲崗五芳街12號利景工業大廈3樓A05室",
                "area" => "Hong Kong",
                "email" => "info@i3dprinter.com.hk",
                "tel" => "55166291"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ideamakerhk/posts/2576408182443332"
        }
    ];
    public final tags:Array<Tag> = [
        technology,
        shop
    ];
}

