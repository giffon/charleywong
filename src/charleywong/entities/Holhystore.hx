package charleywong.entities;

class Holhystore implements Entity {
    public final id = "holhystore";
    public final name = [
        en => "Holhy store"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/holhystore/",
            meta: [
                "about" => "Since 2014 門市:旺角好景商業中心16樓04\n\n為左大家購買更安心 , 外國預訂貨品全部都有外國訂貨記錄同單據...\n\n\n\nSee more",
                "categories" => [
                    "Clothing (brand)"
                ],
                "tel" => "56117060",
                "id" => "786961828107201"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/holhystore/photos/a.872553352881381/1686352334834808"
        }
    ];
    public final tags:Array<Tag> = [];
}

