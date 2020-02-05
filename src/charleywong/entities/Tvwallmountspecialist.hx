package charleywong.entities;

class Tvwallmountspecialist implements Entity {
    public final id = "tvwallmountspecialist";
    public final name = [
        en => "TV Wallmount Specialist",
        zh => "電視掛牆安裝專家"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/tvwallmountspecialist/",
            meta: [
                "id" => "233755000372105",
                "about" => "我們專業的Specialist團隊致力為我們客戶提供度身訂造及一站式電視掛牆安裝方案，無論是家居還是商業機構，只要你打算把你的電視掛到牆上，就需要一個專業準確的電視掛牆安裝建議方案",
                "categories" => [
                    "Product/service",
                    "Electronics",
                    "Interior design studio"
                ],
                "email" => "tvwallmountspecialists1@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/tvwallmountspecialist/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tvwallmountspecialist/posts/743378906076376"
        },
        {
            url: "https://www.facebook.com/tvwallmountspecialist/videos/1015488622131554/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

