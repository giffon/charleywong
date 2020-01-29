package charleywong.entities;

class LABProduction implements Entity {
    public final id = "lab.production";
    public final name = [
        en => "LAB Production"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.labproduction.com.hk"
        },
        {
            url: "https://www.facebook.com/lab.production/",
            meta: [
                "id" => "117415434947130",
                "about" => "LAB Production 憑著對數碼影像拍攝的熱誠、認識和經驗，提供優質的攝影及數碼影像製作服務。",
                "categories" => [
                    "Photographer",
                    "Video creator"
                ],
                "addr" => "28A, 3/F, Hing Yip Centre, 31 Hing Yip Street, Kwun Tong",
                "area" => "Hong Kong",
                "email" => "lab.production@ymail.com",
                "tel" => "53189797"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lab.production/photos/a.649523088403026/2658324267522888/"
        },
        {
            url: "https://www.facebook.com/lab.production/photos/a.649523088403026/2378615128827138/"
        }
    ];
    public final tags:Array<Tag> = [];
}

