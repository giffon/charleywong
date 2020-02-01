package charleywong.entities;

class Tdtmpage implements Entity {
    public final id = "tdtm.page";
    public final name = [
        en => "Sprayco",
        zh => "沛杰"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://spray-co.com"
        },
        {
            url: "https://www.facebook.com/tdtm.page/",
            meta: [
                "id" => "238427683029793",
                "about" => "專營韓國護膚品,貨品全經雨潼精挑細選，更有美容達人親自演繹商品功效, 感謝粉絲們多多支持\n\n營業時間: 星期一 12:30pm-7pm / 星期二至五 10am-7pm\n【星期六,日及勞工假休息 / 午飯時間休息2-3pm】",
                "categories" => [
                    "Cosmetics shop",
                    "Wholesale and supply shop",
                    "Skincare service"
                ],
                "addr" => "長沙灣大南西街615-617號百福工業大廈9樓8室",
                "area" => "Cheung Sha Wan, Hong Kong",
                "email" => "info@spray-co.com",
                "tel" => "24767499"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tdtm.page/posts/1076388132567073"
        },
        {
            url: "https://www.facebook.com/tdtm.page/videos/1034914313539447/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

