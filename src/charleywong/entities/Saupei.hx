package charleywong.entities;

class Saupei implements Entity {
    public final id = "saupei";
    public final name = [
        zh => "收皮",
        en => "Saupei"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/saupei/",
            meta: [
                "about" => "收皮工作室抱著人棄我取的精神，積極重造，把垃圾變成獨一無二的日用品，很多是香港首創。收皮是本港首個回收紙包飲品盒再造用品的品牌，其他代表作包括戶外車軚櫈，布紙巾及蜜蠟布。",
                "categories" => [
                    "Product/service"
                ],
                "email" => "saupeihk@gmail.com",
                "tel" => "96518567",
                "id" => "639790036110690"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/saupei/posts/2240657616023916"
        },
        {
            url: "https://www.facebook.com/saupei/photos/a.661896430566717/2574666612623013/"
        }
    ];
}

