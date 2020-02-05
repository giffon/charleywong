package charleywong.entities;

class SUPERVAN implements Entity {
    public final id = "5upervan";
    public final name = [
        en => "SUPER VAN"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.34889448.com"
        },
        {
            url: "https://www.facebook.com/5upervan/",
            meta: [
                "id" => "1468598070128828",
                "about" => "仍處於傳統運輸合作模式？\n立即成為我們的運輸伙伴，更可透過我們以特惠價錢於傳媒中推廣您的商品，向大眾宣揚您的品牌商品，聯乘舉辦活動創造商機。Let us find the right van for you.",
                "categories" => [
                    "Truck Rental",
                    "Home removal company",
                    "Transportation service"
                ],
                "addr" => "港九新界",
                "area" => "Hong Kong",
                "email" => "8supervan8@gmail.com",
                "tel" => "34889448"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/5upervan/posts/2394744714180821"
        },
        {
            url: "https://www.facebook.com/5upervan/photos/a.1469071170081518/2491124111209547/"
        }
    ];
    public final tags:Array<Tag> = [
        transport
    ];
}

