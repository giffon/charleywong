package charleywong.entities;

class HKPaperArt implements Entity {
    public final id = "HKPaperArt";
    public final name = [
        en => "PaperArt",
        zh => "紙品天地"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hkpaperart.com"
        },
        {
            url: "https://www.facebook.com/HKPaperArt/",
            meta: [
                "id" => "260003967359684",
                "about" => "香港中環德輔道中106-108號鴻德大廈一樓\nMon-Sat:10am-7pm,Sun:Closed\nTel: (852)2545-8985\nEmail: hkpaperart@yahoo.com.hk\nInstagram: hkpaperart",
                "categories" => [
                    "Product/service",
                    "Arts and crafts shop",
                    "Art"
                ],
                "email" => "hkpaperart@yahoo.com.hk",
                "tel" => "25458985"
            ]
        },
        {
            url: "https://www.instagram.com/hkpaperart/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HKPaperArt/photos/a.330773400282740/3149401848419867/"
        },
        {
            url: "https://www.facebook.com/HKPaperArt/photos/a.603272573032820/3152464188113633/"
        },
        {
            url: "https://www.facebook.com/HKPaperArt/photos/a.330773400282740/2944637895562931/"
        },
        {
            url: "https://www.facebook.com/HKPaperArt/posts/2839729256053796"
        },
        {
            url: "https://www.facebook.com/HKPaperArt/posts/2841818089178246"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

