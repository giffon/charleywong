package charleywong.entities;

class Eroshongkong implements Entity {
    public final id = "eroshongkong";
    public final name = [
        zh => "EROS - 有機天然．生活美容百貨"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/eroshongkong/",
            meta: [
                "about" => "我們是法國 Florihana 香港代理，出售芳香治療產品，同時引入世界各地有機天然美容產品，（主要為歐美地區有機認證產品），致力搜羅天然安全的護膚及彩妝產品，提供更多天然環保選擇予顧",
                "categories" => [
                    "Shopping & retail",
                    "Organic food shop",
                    "Beauty, cosmetic & personal care"
                ],
                "addr" => "旺角彌敦道610號荷里活商業中心7樓703",
                "area" => "Mong Kok",
                "email" => "eroshongkong@gmail.com",
                "tel" => "55031990"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/eroshongkong/posts/1456226904534678"
        }
    ];
}

