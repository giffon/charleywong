package charleywong.entities;

class Pigpigchudom implements Entity {
    public final id = "pigpigchudom";
    public final name = [
        zh => "豬兜媽工作室"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/pigpigchudom/",
            meta: [
                "id" => "175263262625698",
                "about" => "在職豬兜媽育有一隻四歲大豬兜仔，什麼都以豬兜仔為重心，所以個人化產品以實用和平靚正爲重點，適合各小朋友使用。豬兜媽利用私人時間去創業，得到滿足感之餘，也希望收禮者開心！",
                "categories" => [
                    "Shopping & retail",
                    "Baby goods/children\'s goods",
                    "Product/service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/pigpigchudom/posts/1492478670904144"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

