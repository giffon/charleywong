package charleywong.entities;

class JENJENGOODS implements Entity {
    public final id = "JENJENGOODS";
    public final name = [
        zh => "真正好生活百貨"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/JENJENGOODS/",
            meta: [
                "about" => "Jenjengoods生活百貨團隊主力為大家於日韓台等地，搜羅多種生活品味與實用兼備嘅產品，希望可以幫助大家生活得更健康自在。亦同時承諾每月捐出部份營業額作慈善用途。",
                "categories" => [
                    "Product/service"
                ],
                "email" => "cs@jenjengoods.com",
                "tel" => "60362484",
                "id" => "318380865662216"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/JENJENGOODS/posts/423060641860904"
        }
    ];
    public final tags:Array<Tag> = [];
}

