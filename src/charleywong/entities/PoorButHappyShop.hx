package charleywong.entities;

class PoorButHappyShop implements Entity {
    public final id = "poor.but.happy.shop";
    public final name = [
        zh => "窮記",
        en => "Poor But Happy Shop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/poor.but.happy.shop/",
            meta: [
                "about" => "零售及批發相機用品, 門市地址: 長沙灣福榮街226號地下 ( 與東沙島街交界 ) ( 每日1PM~8PM ) TEL: 6029 0601, http://poor.com.hk",
                "categories" => [
                    "Camera shop",
                    "Discount shop"
                ],
                "addr" => "長沙灣福榮街226號地下",
                "area" => "Cheung Sha Wan, Hong Kong",
                "email" => "poor.com.hk@gmail.com",
                "tel" => "60290601",
                "id" => "183898424971666"
            ]
        },
        {
            url: "https://www.poor.hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/poor.but.happy.shop/posts/3074718709222942"
        },
        {
            url: "https://www.facebook.com/poor.but.happy.shop/photos/a.414588128569360/3071723419522471"
        }
    ];
    public final tags:Array<Tag> = [
        technology,
        shop
    ];
}

