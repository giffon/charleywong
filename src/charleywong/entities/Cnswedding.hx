package charleywong.entities;

class Cnswedding implements Entity {
    public final id = "cnswedding";
    public final name = [
        zh => "惜婚男女",
        en => "C&S Marriage and Wedding Planning"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/cnswedding/",
            meta: [
                "id" => "117937371558917",
                "about" => "我們是一間專營環保婚禮和惜婚教育的良心小企，主要業務包括二手婚禮用品租售及回收、“惜婚”工作坊、婚禮策劃、環保小禮物設計等。",
                "categories" => [
                    "Wedding planning service"
                ],
                "email" => "cnswedding326@gmail.com",
                "tel" => "21357105"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cnswedding/photos/a.925925404093439/2844703175548976/"
        },
        {
            url: "https://www.facebook.com/cnswedding/photos/a.925925404093439/2642170512468911/"
        },
        {
            url: "https://www.facebook.com/cnswedding/photos/a.925925404093439/2542134209139209/"
        }
    ];
    public final tags:Array<Tag> = [];
}

