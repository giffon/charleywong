package charleywong.entities;

class Timesdp implements Entity {
    public final id = "Timesdp";
    public final name = [
        zh => "光時數碼沖印"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Timesdp/",
            meta: [
                "id" => "124125872310957",
                "about" => "-專業數碼/菲林沖曬,手機曬相,證件快相,舊相修復裁放,貼紙相冊精品\n-的士小巴證,影印傳真過賿,影帶錄音帶格式轉換備份\n-各式電子產品精品零售\nMake your time,Take your time",
                "categories" => [
                    "Product/service",
                    "Local service"
                ],
                "addr" => "九龍東京街37-39號恆順大廈地下4號舖",
                "area" => "Hong Kong",
                "email" => "times_digitalphoto@hotmail.com",
                "tel" => "23867167"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Timesdp/posts/183623719694505"
        },
        {
            url: "https://www.facebook.com/Timesdp/photos/a.174025707320973/174025687320975/"
        }
    ];
    public final tags:Array<Tag> = [
        photography,
        shop
    ];
}

