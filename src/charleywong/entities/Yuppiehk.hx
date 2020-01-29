package charleywong.entities;

class Yuppiehk implements Entity {
    public final id = "yuppie.hk";
    public final name = [
        zh => "入屋雜貨店",
        en => "yuppie.hk"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.yuppie.hk"
        },
        {
            url: "https://www.facebook.com/yuppie.hk/",
            meta: [
                "id" => "1681374665262051",
                "about" => "代理多款天然有機護膚品品牌：純素護膚品－植芮堂、法國有機護膚品Najel 及香港天然香薰護膚品 Ali\'s Aromatherapy ，一系列的天然護膚品，適合皮膚過敏、濕疹、紅腫等朋友。歡迎查詢",
                "categories" => [
                    "Retail company",
                    "Product/service",
                    "Website"
                ],
                "email" => "yuppiehkbuy@gmail.com",
                "tel" => "96604191"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/yuppie.hk/posts/2680600692006105"
        }
    ];
    public final tags:Array<Tag> = [];
}

