package charleywong.entities;

class Printing3DOfHongKong implements Entity {
    public final id = "3DPHK";
    public final name = [
        en => "3D Printing Of Hong Kong"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.3dphkstore.com"
        },
        {
            url: "https://www.facebook.com/3DPHK/",
            meta: [
                "id" => "854833651273363",
                "about" => "官方授權CR 系列 3D Printer香港代理 ，歡迎互相交流分享和留意CR 3D printing 活動推擴～",
                "categories" => [
                    "Product/service",
                    "Computer company"
                ],
                "email" => "support@3dphkstore.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/3DPHK/posts/2198861990203849"
        }
    ];
    public final tags:Array<Tag> = [
        printing3d
    ];
}
