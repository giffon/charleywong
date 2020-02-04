package charleywong.entities;

class Onestephongkong implements Entity {
    public final id = "onestephongkong";
    public final name = [
        zh => "裱｜Onestep Printing"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://onestep.studio"
        },
        {
            url: "https://www.facebook.com/onestephongkong/",
            meta: [
                "id" => "114640246629211",
                "about" => "專業打印\n設計師主理 | 高科技印刷技術\n專業設計師幫助評估客人提供的圖片解像度，確保輸出最高質印刷產品。配合Canon最新印刷技術，印刷品擁有更廣色域、更佳光澤度，更具立體感。",
                "categories" => [
                    "Printing service"
                ],
                "email" => "info@onestep.studio",
                "tel" => "70720785"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/onestephongkong/photos/a.116327099793859/130565288370040/"
        },
        {
            url: "https://www.facebook.com/onestephongkong/posts/145214290238473"
        }
    ];
    public final tags:Array<Tag> = [
        printing
    ];
}

