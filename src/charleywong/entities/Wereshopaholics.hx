package charleywong.entities;

class Wereshopaholics implements Entity {
    public final id = "wereshopaholics";
    public final name = [
        en => "We\'re Shopaholics - Natural & Organic Beauty"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/wereshopaholics/",
            meta: [
                "about" => "我們執著於搜羅各國優質產品，嚴格挑選符合自然、有機、安全、無污染的高效產品。所有產品均親身使用，承諾挑選的品牌均為最高等級，貴精不貴多，帶給你高效安全的護膚體驗。",
                "categories" => [
                    "Health/beauty"
                ],
                "addr" => "九龍觀塘開源道56號大眾工業大廈5樓15室",
                "area" => "Hong Kong",
                "tel" => "91072276",
                "id" => "421002051587907"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/wereshopaholics/photos/a.421444868210292/1006265826394857"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

