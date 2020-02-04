package charleywong.entities;

class HKTVmall implements Entity {
    public final id = "hktvmall";
    public final name = [
        en => "HKTVmall"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hktvmall.com"
        },
        {
            url: "https://www.facebook.com/hktvmall/",
            meta: [
                "id" => "297742713664957",
                "about" => "HKTVmall 與超過 2,800 間商戶合作，售賣超過 320,000 件貨品：超市、藥妝、母嬰育兒、寵物、電子電器、家品傢俬、運動旅行、玩具圖書、服飾、保險及飲食優惠等等，應有盡有。",
                "categories" => [
                    "Shopping & retail"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hktvmall/posts/2447456298693577"
        },
        {
            url: "https://www.facebook.com/hktvmall/posts/2239941349445074"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

