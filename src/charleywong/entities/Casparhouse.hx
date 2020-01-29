package charleywong.entities;

class Casparhouse implements Entity {
    public final id = "CasparHouse";
    public final name = [
        en => "Caspar house"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/CasparHouse/",
            meta: [
                "about" => "CASPAR HOUSE 以 “馬賽克” 及 “彩繪” 創作為主。\n每一塊馬賽克磚塊的切割及鑲嵌，以致畫畫時每一個筆觸及顏料的色彩，均有分別。我們將兩種工藝融合在一起，創作出色彩繽紛及獨有的作品",
                "categories" => [
                    "Product/service"
                ],
                "email" => "casparhouse.hk@gmail.com",
                "id" => "200872676595627"
            ]
        },
        {
            url: "https://www.instagram.com/casparhouse/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CasparHouse/posts/3139788789370653"
        },
        {
            url: "https://www.facebook.com/CasparHouse/photos/a.773133102702912/3103603519655847/"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

