package charleywong.entities;

class ClassicalCameraShopHK implements Entity {
    public final id = "classicalcamerashop.hk";
    public final name = [
        en => "Classical Camera Shop HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/classicalcamerashop.hk/",
            meta: [
                "about" => "We trade all kinds of Vintage Film Cameras, Lenses\nContact\nEmail: info@classicalcamerashop.hk\nPhone: +852-2391 3130",
                "categories" => [
                    "Camera shop",
                    "Camera/photo",
                    "Shopping & retail"
                ],
                "addr" => "太子彌敦道760號東海大廈13樓17室, Flat 17, 13/F., Cosmopolitan Centre, 760 Nathan Road, Prince Edward",
                "area" => "Hong Kong",
                "email" => "info@classicalcamerashop.hk",
                "tel" => "23913130",
                "id" => "417774858282396"
            ]
        },
        {
            url: "https://www.instagram.com/classicalcamerashop.hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/classicalcamerashop.hk/photos/a.783668715026340/2552199774839883/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

