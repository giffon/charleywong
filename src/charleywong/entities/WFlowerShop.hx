package charleywong.entities;

class WFlowerShop implements Entity {
    public final id = "w.flowershop.hk";
    public final name = [
        en => "W. Flower Shop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/w.flowershop.hk/",
            meta: [
                "about" => "我們提供優越現代感的高質量花藝產品。我們是專業和經驗豐富的。 我們的使命是選用最好的花材和物料去創造華麗的花藝產品。",
                "categories" => [
                    "Florist",
                    "Product/service"
                ],
                "addr" => "Koon Wah Mirror Factory 3rd Bldg 5-9 Ka Hing Road",
                "area" => "Kwai Chung",
                "email" => "w.flowershop@gmail.com",
                "tel" => "91927303",
                "id" => "445433225597822"
            ]
        },
        {
            url: "https://www.instagram.com/w.flowershop/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/w.flowershop.hk/photos/a.476483509159460/483121721828972/"
        },
        {
            url: "https://www.facebook.com/w.flowershop.hk/photos/a.476889985785479/1482112531929881/"
        }
    ];
    public final tags:Array<Tag> = [
        florist
    ];
}

