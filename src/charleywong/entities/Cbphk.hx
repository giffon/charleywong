package charleywong.entities;

class Cbphk implements Entity {
    public final id = "cbphk";
    public final name = [
        en => "Car Beauty PRO Hong Kong"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.cbp.com.hk"
        },
        {
            url: "https://www.facebook.com/cbphk/",
            meta: [
                "id" => "1162642087082188",
                "about" => "Car Beauty Pro Hong Kong 日本專業汽車美容\n\n● Car Beauty Pro® 紅磡店: ...\n\n\n\nSee more",
                "categories" => [
                    "Car wash",
                    "Vehicle detailing service"
                ],
                "addr" => "Shop G2, Hunghom Gardens Block 1, 3 Tsing Chau Street",
                "area" => "Hung Hom",
                "email" => "info@cbp.com.hk",
                "tel" => "37020088"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cbphk/posts/2843691522310561"
        }
    ];
    public final tags:Array<Tag> = [
        automobile
    ];
}

